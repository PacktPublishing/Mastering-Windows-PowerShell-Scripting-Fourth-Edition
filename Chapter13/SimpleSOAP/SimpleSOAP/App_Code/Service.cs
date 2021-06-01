using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.IO;
using System.Web.Services;
using Newtonsoft.Json;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class Service : System.Web.Services.WebService
{
    List<Element> elements;

    public Service () {
        using (StreamReader r = new StreamReader(Server.MapPath("elements.json")))
        {
            string json = r.ReadToEnd();
            this.elements = JsonConvert.DeserializeObject<List<Element>>(json);
        }
    }

    [WebMethod]
    public Element GetElement(string Name)
    {
        return this.FindElement(Name);
    }

    [WebMethod]
    public Element[] GetElements()
    {
        return this.elements.ToArray();
    }
    
    [WebMethod]
    public Element[] GetElementsByGroup(Group group)
    {
        return this.elements.Where(atom => atom.Group == group).ToArray();
    }

    [WebMethod]
    public int GetAtomicNumber(string Name)
    {
        return this.FindElement(Name).AtomicNumber;
    }

    [WebMethod]
    public string GetAtomicMass(string Name)
    {
        return this.FindElement(Name).AtomicMass;
    }

    [WebMethod]
    public string GetElementSymbol(string Name)
    {
        return this.FindElement(Name).Symbol;
    }
  
    [WebMethod]
    public Element[] SearchElements(List<SearchCondition> searchConditions)
    {
        ParameterExpression parameter = Expression.Parameter(typeof(Element), "element");

        BinaryExpression currentExpression = searchConditions.First().GetExpression(parameter);
        foreach (SearchCondition condition in searchConditions.Skip(1))
        {
            currentExpression = Expression.And(currentExpression, condition.GetExpression(parameter));
        }

        var lambda = Expression.Lambda<Func<Element, bool>>(currentExpression, parameter);

        return this.elements.AsQueryable().Where(lambda).ToArray();
    }
    
    private Element FindElement(string Name)
    {
        return this.elements.Where(element => element.Name.ToLower() == Name.ToLower() || element.Symbol.ToLower() == Name.ToLower()).First<Element>();
    }
}