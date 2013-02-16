<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="WindowsAzureCloudService" generation="1" functional="0" release="0" Id="c883990f-8d2f-47bf-9ac4-e6326d47c776" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="WindowsAzureCloudServiceGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="WCFServiceWebRole:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/WindowsAzureCloudService/WindowsAzureCloudServiceGroup/LB:WCFServiceWebRole:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="WCFServiceWebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/WindowsAzureCloudService/WindowsAzureCloudServiceGroup/MapWCFServiceWebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="WCFServiceWebRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/WindowsAzureCloudService/WindowsAzureCloudServiceGroup/MapWCFServiceWebRoleInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:WCFServiceWebRole:Endpoint1">
          <toPorts>
            <inPortMoniker name="/WindowsAzureCloudService/WindowsAzureCloudServiceGroup/WCFServiceWebRole/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapWCFServiceWebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/WindowsAzureCloudService/WindowsAzureCloudServiceGroup/WCFServiceWebRole/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapWCFServiceWebRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/WindowsAzureCloudService/WindowsAzureCloudServiceGroup/WCFServiceWebRoleInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="WCFServiceWebRole" generation="1" functional="0" release="0" software="C:\Users\Administrator\My Study\!ITU Courses\2013 IV Cloud Computing\Code\WindowsAzureCloudService\WindowsAzureCloudService\csx\Release\roles\WCFServiceWebRole" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;WCFServiceWebRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;WCFServiceWebRole&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="WCFServiceWebRole.svclog" defaultAmount="[1000,1000,1000]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/WindowsAzureCloudService/WindowsAzureCloudServiceGroup/WCFServiceWebRoleInstances" />
            <sCSPolicyUpdateDomainMoniker name="/WindowsAzureCloudService/WindowsAzureCloudServiceGroup/WCFServiceWebRoleUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/WindowsAzureCloudService/WindowsAzureCloudServiceGroup/WCFServiceWebRoleFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="WCFServiceWebRoleUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="WCFServiceWebRoleFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="WCFServiceWebRoleInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="4dbe9890-86ff-4ec6-bb65-ea3e67953cb5" ref="Microsoft.RedDog.Contract\ServiceContract\WindowsAzureCloudServiceContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="28d1e011-e35b-4631-a34e-aba82a4fcd20" ref="Microsoft.RedDog.Contract\Interface\WCFServiceWebRole:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/WindowsAzureCloudService/WindowsAzureCloudServiceGroup/WCFServiceWebRole:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>