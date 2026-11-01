.class final enum Lcom/google/protobuf/c2$new$if;
.super Lcom/google/protobuf/c2$new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/c2$new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/protobuf/c2$new;-><init>(Ljava/lang/String;ILcom/google/protobuf/c2$do;)V

    return-void
.end method


# virtual methods
.method public readString(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
