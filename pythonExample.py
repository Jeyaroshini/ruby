import yaml
def pythonYamlFile(yamlFile):
    with open(yamlFile, 'r') as file:
        data = yaml.safe_load(file)
    return data
print (pythonYamlFile('pythonExample.yaml'))
