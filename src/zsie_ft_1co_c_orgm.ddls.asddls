@AbapCatalog.sqlViewName: 'ZSIE_FT1COCORGM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumption CDS-Mapping table Organization Key to CO object'

@Search.searchable: true
@VDM.viewType: #CONSUMPTION

// ODATA
@OData.publish: true

// BOPF
@ObjectModel.transactionalProcessingDelegated: true
@ObjectModel.semanticKey: ['Kokrs', 'ApplType', 'OrgKey', 'ObjType']
@ObjectModel.representativeKey: 'Kokrs'
@ObjectModel.createEnabled: true
@ObjectModel.updateEnabled: true
@ObjectModel.deleteEnabled: true

//@UI.headerInfo.typeName: 'kokrs'
//@UI.headerInfo.title.value: 'kokrs'

@UI: {
 headerInfo: { typeName: 'Organization Key', typeNamePlural: 'Organization Keys', title: { type: #STANDARD } } }


define view ZSIE_FT_1CO_C_ORGM
  as select from ZSIE_FT_1CO_I_ORGM
{
      @Search.defaultSearchElement: true
      @UI: {
          lineItem:       [ { position: 10, importance: #HIGH } ],
          identification: [ { position: 10, importance: #HIGH } ] }
  key kokrs   as Kokrs,

      @UI: {
          lineItem:       [ { position: 20, importance: #MEDIUM } ],
          identification: [ { position: 20 } ] }
  key appl    as ApplType,

      @UI: {
          lineItem:       [ { position: 30, importance: #MEDIUM } ],
          identification: [ { position: 30 } ] }
  key orgkey  as OrgKey,

      @Search.defaultSearchElement: true
      //@UI.selectionField.position: 40
      @UI: {
          lineItem:       [ { position: 40, importance: #MEDIUM } ],
          identification: [ { position: 40 } ] }
      //@EndUserText.label: 'Type of CO object'
  key objtype as ObjType,

      @Search.defaultSearchElement: true
      //@UI.selectionField.position: 50
      @UI: {
          lineItem:       [ { position: 50, importance: #MEDIUM } ],
          identification: [ { position: 50 } ] }
      valtype as ValueType,

      @UI: {
          lineItem:       [ { position: 60, importance: #MEDIUM } ],
          identification: [ { position: 60 } ] }
      value   as Value

}

/*
@AbapCatalog.sqlViewName: '/SIE/FT1AACANKL'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Maintain Asset Class Exception Consumtion CDS'
@Metadata.allowExtensions: true

@VDM.viewType: #CONSUMPTION

@ObjectModel: {
   createEnabled: true,
   deleteEnabled: true,
   //updateEnabled: true,


   transactionalProcessingDelegated: true,
       usageType: {
   dataClass:      #TRANSACTIONAL,
   serviceQuality: #B,
   sizeCategory:   #L}
}

@OData.publish: true

define view /SIE/FT_1AA_C_ANKL
    as select from /SIE/FT_1AA_I_ANKL
    association [0..1] to I_AssetClassText as _AssetClassDescr on /SIE/FT_1AA_I_ANKL.anlkl = _AssetClassDescr.AssetClass
                                                               and _AssetClassDescr.Language  = $session.system_language
    association [0..1] to /SIE/ft_1aa_c_assetclasscompvh  as _AssetClassCompany  on $projection.CompanyCode = _AssetClassCompany.CompanyCode
                                                                                and $projection.AssetClass  = _AssetClassCompany.AssetClass

   // association [0..1] to I_AssetClassStdVH as _AssetClassVH              on $projection.AssetClass  = _AssetClassVH.AssetClass
    association [0..1] to C_CompanyCodeValueHelp as _CompanyCodeValueHelp on $projection.CompanyCode = _CompanyCodeValueHelp.CompanyCode
    {


      @Search.fuzzinessThreshold: 0.8
      @Consumption.valueHelp: '_CompanyCodeValueHelp'
      @Consumption.filter.selectionType: #SINGLE
      @UI.selectionField.position: 10
      @UI.lineItem.position: 10
      @EndUserText.label: 'Company Code'
      @ObjectModel.readOnly: 'EXTERNAL_CALCULATION'
       @ObjectModel.mandatory: true
       key bukrs as CompanyCode,
       @Consumption.valueHelp: '_AssetClassCompany'
  //     @Consumption.valueHelpDefinition: [{entity: [{element: 'AssetClass',
  //                                                   name:    'I_AssetClassByCompanyCode'       }] }]
       key anlkl as AssetClass,
       @ObjectModel.readOnly: true
 //      _AssetClassDescr.AssetClassExtDescription as AssetClassExtDescription,
       _AssetClassDescr.AssetClassDescription as AssetClassExtDescription,
      _AssetClassDescr,
      //_AssetClassVH,
      _AssetClassCompany,
      _CompanyCodeValueHelp

}


*/
