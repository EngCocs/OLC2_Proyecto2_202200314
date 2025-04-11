public record PackageValue(string Name, Dictionary<string, ValueWrapper> Properties) : ValueWrapper
{
    public ValueWrapper GetProperty(string propName)
    {
        if (Properties.TryGetValue(propName, out var value))
            return value;
        throw new Exception($"Property {propName} not found in package {Name}");
    }
}


