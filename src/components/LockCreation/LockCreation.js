import React from 'react';
import classes from './LockCreation.css';

import Application from '../../App';

const lockCreation = (props) => {

    return (
        <div className={classes.LockCreation}>
            <textarea className={classes.TextBox}>
                Write down a message.
            </textarea>
            <p></p>
            <button onClick={Application.sendMessage} className={classes.Button}>Engrave ❤️🔐</button>
        </div>
    );
};

export default lockCreation;