import React, {useEffect, useState} from 'react';
import BackendService from '../services/BackendService';
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome';
import {alertActions} from "../utils/Rdx";
import {connect} from "react-redux";
import {Form} from "react-bootstrap";
import {useNavigate, useParams} from "react-router-dom";
import {faChevronLeft, faSave} from "@fortawesome/free-solid-svg-icons";

const MuseumComponent = props => {
    const params = useParams();
    const [id, setId] = useState(params.id);

    const [name, setName] = useState("");
    const [location, setLocation] = useState("");

    const [hidden, setHidden] = useState(false);
    const navigate = useNavigate();

    useEffect(() => {
        if (parseInt(id) !== -1) {
            BackendService.retrieveMuseum(id)
                .then((resp) => {
                    setName(resp.data.name)
                    setLocation(resp.data.location)
                })
                .catch(() => setHidden(true))
        }
    }, []);

    const handleChange = e => {
        setName(e.target.name);
    }

    const onSubmit = (event) => {
        event.preventDefault();
        let err = null;
        if (!name) err = "Название музея должно быть указано";
        if (!location) err = "Расоложение музея должно быть указано";
        if (err) props.dispatch(alertActions.error(err));
        let museum = {name, location};

        if (parseInt(id) === -1) {
            BackendService.createMuseum(museum)
                .then(() => navigate(`/museums`))
                .catch(() => {
                })
        } else {
            BackendService.updateMuseum(museum)
                .then(() => navigate(`/museums`))
                .catch(() => {
                })
        }
    }

    if (hidden)
        return null;
    return (
        <div className="m-4">
            <div className=" row my-2 mr-0">
                <h3>Музеи</h3>
                <button className="btn btn-outline-secondary ml-auto"
                        onClick={() => navigate(`/museums`)}
                ><FontAwesomeIcon icon={faChevronLeft}/>{' '}Назад</button>
            </div>
            <Form onSubmit={onSubmit}>
                <Form.Group>
                    <Form.Label>Название</Form.Label>
                    <Form.Control
                        type="text"
                        placeholder="Введите название музея"
                        onChange={(e) => {setName(e.target.value)}}
                        value={name}
                        name="name"
                        autoComplete="off"
                    />

                    <Form.Label>Расположение</Form.Label>
                    <Form.Control
                        type="text"
                        placeholder="Введите расположение музея"
                        onChange={(e) => {setLocation(e.target.value)}}
                        value={location}
                        name="location"
                        autoComplete="off"
                    />
                </Form.Group>
                <button className="btn btn-outline-secondary" type="submit">
                    <FontAwesomeIcon icon={faSave}/>{' '}
                    Сохранить
                </button>
            </Form>
        </div>
    )
}

export default connect()(MuseumComponent);