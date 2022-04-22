import { LightningElement } from 'lwc';

export default class CrearPartida extends LightningElement {
    isModalOpen = false;
    search = '';
    openModal() {
        // to open modal set isModalOpen tarck value as true
        this.isModalOpen = true;
    }
    closeModal() {
        // to close modal set isModalOpen tarck value as false
        this.isModalOpen = false;
    }
    submitDetails() {
        // to close modal set isModalOpen tarck value as false
        //Add your code to call apex method or do some processing
        this.isModalOpen = false;
    }
    handleSearchText(event) {
        this.search = event.detail.value;
        console.log('este es el evento --> ' + this.search);
    }
    handleSearch(event) {
        //Voy a llamar el controlador APEX y enviarle el texto de busqueda para que retorne los datos.

    }
}