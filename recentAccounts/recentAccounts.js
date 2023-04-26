import { LightningElement, track, wire } from 'lwc';
import getAccounts from '@salesforce/apex/accountRecent.getAccountList';
export default class RecentAccounts extends LightningElement {

    @track columns = [
        { label: 'Name', fieldName: 'Name' },
        { label: 'Id', fieldName: 'Id'},
        { label: 'Type', fieldName: 'Type'},
        { label: 'Industry', fieldName: 'Industry'}
    ];
   @track accountList;

   //Method 2
   @wire (getAccounts) wiredAccounts({data,error}){
        if (data) {
             this.accountList = data;
        console.log(data); 
        } else if (error) {
        console.log(error);
        }
   }
}
