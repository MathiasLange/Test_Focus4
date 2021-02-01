@AbapCatalog.sqlViewName: 'ZSIE_FT1COORGM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Mapping table /SIE/FT_1CO_ORGM Organization Key to CO object'

@ObjectModel.compositionRoot: true
@ObjectModel.modelCategory: #BUSINESS_OBJECT

@ObjectModel.writeActivePersistence: 'zsie_ft_1co_orgm'
@ObjectModel.semanticKey: ['kokrs', 'appl', 'orgkey', 'objtype']
@ObjectModel.representativeKey: 'kokrs'
@ObjectModel.transactionalProcessingEnabled: true
@ObjectModel.createEnabled: true
@ObjectModel.updateEnabled: true
@ObjectModel.deleteEnabled: true

@ObjectModel: {
    usageType: {
        dataClass: #TRANSACTIONAL,
        sizeCategory: #L,
        serviceQuality: #C
   }
}

@Search.searchable: true

define view ZSIE_FT_1CO_I_ORGM
  as select from zsie_ft_1co_orgm as Orgm
{
      @Search.defaultSearchElement: true
  key Orgm.kokrs,
  key Orgm.appl,
  key Orgm.orgkey,
      @Search.defaultSearchElement: true
  key Orgm.objtype,
      @Search.defaultSearchElement: true
      Orgm.valtype,
      Orgm.value
}



/*
@AbapCatalog.sqlViewName: '/SIE/FT1AAANKL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Maintain Asset Class Exception CDS'

@ObjectModel: {
   semanticKey:  [ 'bukrs', 'anlkl' ],
   modelCategory: #BUSINESS_OBJECT,
   createEnabled: true,
   deleteEnabled: true,
   updateEnabled: true,

   compositionRoot: true,
   transactionalProcessingEnabled: true,
   writeActivePersistence: '/sie/ft_1aa_ankl' ,

     usageType: {
    dataClass: #TRANSACTIONAL,
    sizeCategory: #L,
    serviceQuality: #C
  }
}

@VDM.viewType: #TRANSACTIONAL

define view /SIE/FT_1AA_I_ANKL
    as select from /sie/ft_1aa_ankl
 {
   key bukrs,
   key anlkl
}
*/
