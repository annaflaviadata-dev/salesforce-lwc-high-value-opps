import { LightningElement, wire } from 'lwc';
import getHighValueOpportunities from '@salesforce/apex/OpportunityService.getHighValueOpportunities';

export default class ListaOportunidades extends LightningElement {
    @wire(getHighValueOpportunities)
    opportunities; // O objeto que contém .data e .error
}