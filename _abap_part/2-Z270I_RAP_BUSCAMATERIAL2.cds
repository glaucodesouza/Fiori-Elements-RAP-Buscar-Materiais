@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'RAP View Básica: Buscar material'

define root view entity Z270I_RAP_BUSCAMATERIAL2 as select from z270_material as Material {
    key id,
    descricao,
    categoria,
    moeda,
    @Semantics.amount.currencyCode: 'moeda'
    valor,
    
    --dados de controle
    @Semantics.user.createdBy: true
    criado_por,
    @Semantics.systemDateTime.createdAt: true
    criado_em,
    @Semantics.user.lastChangedBy: true
    modificado_por,
    @Semantics.systemDateTime.lastChangedAt: true
    modificado_em
} 
