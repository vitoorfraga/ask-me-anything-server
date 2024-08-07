// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.27.0

package pgstore

import (
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgtype"
)

type Message struct {
	ID            uuid.UUID
	RoomID        uuid.UUID
	Messages      pgtype.Text
	ReactionCount int64
	Answered      bool
}

type Room struct {
	ID    uuid.UUID
	Theme string
}
