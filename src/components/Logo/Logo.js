import React from 'react';

import heartLogo from '../../assets/images/heart-logo.png';
import classes from './Logo.css';

const logo = (props) => (
    <div className={classes.Logo} style={{height: props.height}}>
        <img src={heartLogo} alt="MyBurger" />
    </div>
);

export default logo;