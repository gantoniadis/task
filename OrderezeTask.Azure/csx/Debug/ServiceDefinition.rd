<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="OrderezeTask.Azure" generation="1" functional="0" release="0" Id="b3f48373-b67b-4a3a-9b91-9d59c0f71557" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="OrderezeTask.AzureGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="OrderezeTask:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/OrderezeTask.Azure/OrderezeTask.AzureGroup/LB:OrderezeTask:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="OrderezeTask:ImageStorageAccountConn" defaultValue="">
          <maps>
            <mapMoniker name="/OrderezeTask.Azure/OrderezeTask.AzureGroup/MapOrderezeTask:ImageStorageAccountConn" />
          </maps>
        </aCS>
        <aCS name="OrderezeTask:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/OrderezeTask.Azure/OrderezeTask.AzureGroup/MapOrderezeTask:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="OrderezeTaskInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/OrderezeTask.Azure/OrderezeTask.AzureGroup/MapOrderezeTaskInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:OrderezeTask:Endpoint1">
          <toPorts>
            <inPortMoniker name="/OrderezeTask.Azure/OrderezeTask.AzureGroup/OrderezeTask/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapOrderezeTask:ImageStorageAccountConn" kind="Identity">
          <setting>
            <aCSMoniker name="/OrderezeTask.Azure/OrderezeTask.AzureGroup/OrderezeTask/ImageStorageAccountConn" />
          </setting>
        </map>
        <map name="MapOrderezeTask:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/OrderezeTask.Azure/OrderezeTask.AzureGroup/OrderezeTask/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapOrderezeTaskInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/OrderezeTask.Azure/OrderezeTask.AzureGroup/OrderezeTaskInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="OrderezeTask" generation="1" functional="0" release="0" software="C:\Users\George\Documents\GitHub\OrderezeTask\OrderezeTask.Azure\csx\Debug\roles\OrderezeTask" entryPoint="base\x86\WaHostBootstrapper.exe" parameters="base\x86\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="ImageStorageAccountConn" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;OrderezeTask&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;OrderezeTask&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/OrderezeTask.Azure/OrderezeTask.AzureGroup/OrderezeTaskInstances" />
            <sCSPolicyUpdateDomainMoniker name="/OrderezeTask.Azure/OrderezeTask.AzureGroup/OrderezeTaskUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/OrderezeTask.Azure/OrderezeTask.AzureGroup/OrderezeTaskFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="OrderezeTaskUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="OrderezeTaskFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="OrderezeTaskInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="2e3f4016-c172-41ec-a9b3-123e2e6539d6" ref="Microsoft.RedDog.Contract\ServiceContract\OrderezeTask.AzureContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="3bea9f64-b5a8-46f3-b57a-637961a43a89" ref="Microsoft.RedDog.Contract\Interface\OrderezeTask:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/OrderezeTask.Azure/OrderezeTask.AzureGroup/OrderezeTask:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>