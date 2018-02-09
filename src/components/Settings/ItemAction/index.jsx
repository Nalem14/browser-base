import React from 'react'

export default class ItemAction extends React.Component {
  render() {
    return (
      <div className='item-action'>
        {React.Children.map(this.props.children, child => {
          return React.cloneElement(child, {ref: 'action'})
        })}
      </div>
    )
  }
}