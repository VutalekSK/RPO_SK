import React, {useEffect, useState} from 'react';
import BackendService from '../services/BackendService';
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome';
import {alertActions} from "../utils/Rdx";
import {connect} from "react-redux";
import {Form} from "react-bootstrap";
import {useNavigate, useParams} from "react-router-dom";
import {faChevronLeft, faSave} from "@fortawesome/free-solid-svg-icons";

const ArtistComponent = props => {
    const params = useParams();
    const [id, setId] = useState(params.id);

    const [name, setName] = useState("");
    const [century, setCentury] = useState(0);

    const [hidden, setHidden] = useState(false);
    const navigate = useNavigate();

    useEffect(() => {
        if (parseInt(id) !== -1) {
            BackendService.retrieveArtist(id)
                .then((resp) => {
                    setName(resp.data.name)
                    setCentury(resp.data.century)
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
        if (!name) err = "Имя художника должно быть указано";
        if (!century) err = "Век должен быть указано";
        if (err) props.dispatch(alertActions.error(err));
        let artist = {name, century};

        if (parseInt(id) === -1) {
            BackendService.createArtist(artist)
                .then(() => navigate(`/artists`))
                .catch(() => {
                })
        } else {
            BackendService.updateArtist(artist)
                .then(() => navigate(`/artists`))
                .catch(() => {
                })
        }
    }

    if (hidden)
        return null;
    return (
        <div className="m-4">
            <div className=" row my-2 mr-0">
                <h3>Художники</h3>
                <button className="btn btn-outline-secondary ml-auto"
                        onClick={() => navigate(`/artists`)}
                ><FontAwesomeIcon icon={faChevronLeft}/>{' '}Назад</button>
            </div>
            <Form onSubmit={onSubmit}>
                <Form.Group>
                    <Form.Label>Имя</Form.Label>
                    <Form.Control
                        type="text"
                        placeholder="Введите имя художника"
                        onChange={(e) => {setName(e.target.value)}}
                        value={name}
                        name="name"
                        autoComplete="off"
                    />

                    <Form.Label>Век</Form.Label>
                    <Form.Control
                        type="text"
                        placeholder="Введите век"
                        onChange={(e) => {setCentury(e.target.value)}}
                        value={century}
                        name="century"
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

export default connect()(ArtistComponent);