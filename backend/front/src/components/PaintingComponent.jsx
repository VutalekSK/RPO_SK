import React, {useEffect, useState} from 'react';
import BackendService from '../services/BackendService';
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome';
import {alertActions} from "../utils/Rdx";
import {connect} from "react-redux";
import {Form} from "react-bootstrap";
import {useNavigate, useParams} from "react-router-dom";
import {faChevronLeft, faSave} from "@fortawesome/free-solid-svg-icons";

const PaintingComponent = props => {
    const params = useParams();
    const [id, setId] = useState(params.id);

    const [name, setName] = useState("");
    const [year, setYear] = useState(0);

    const [hidden, setHidden] = useState(false);
    const navigate = useNavigate();

    useEffect(() => {
        if (parseInt(id) !== -1) {
            BackendService.retrievePainting(id)
                .then((resp) => {
                    setName(resp.data.name)
                    setYear(resp.data.year)
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
        if (!name) err = "Название картины должно быть указано";
        if (!year) err = "Название картины должно быть указано";
        if (err) props.dispatch(alertActions.error(err));
        let painting = {name, year};

        if (parseInt(id) === -1) {
            BackendService.createPainting(painting)
                .then(() => navigate(`/paintings`))
                .catch(() => {
                })
        } else {
            BackendService.updatePainting(painting)
                .then(() => navigate(`/paintings`))
                .catch(() => {
                })
        }
    }

    if (hidden)
        return null;
    return (
        <div className="m-4">
            <div className=" row my-2 mr-0">
                <h3>Картины</h3>
                <button className="btn btn-outline-secondary ml-auto"
                        onClick={() => navigate(`/paintings`)}
                ><FontAwesomeIcon icon={faChevronLeft}/>{' '}Назад</button>
            </div>
            <Form onSubmit={onSubmit}>
                <Form.Group>
                    <Form.Label>Название</Form.Label>
                    <Form.Control
                        type="text"
                        placeholder="Введите название картины"
                        onChange={(e) => {setName(e.target.value)}}
                        value={name}
                        name="name"
                        autoComplete="off"
                    />

                    <Form.Label>Год</Form.Label>
                    <Form.Control
                        type="text"
                        placeholder="Введите год написания"
                        onChange={(e) => {setYear(e.target.value)}}
                        value={year}
                        name="year"
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

export default connect()(PaintingComponent);