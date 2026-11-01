.class Lcom/google/protobuf/MapField$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MapField$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MapField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/MapField$Converter<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final do:Lcom/google/protobuf/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/x<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/protobuf/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/x<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/MapField$do;->do:Lcom/google/protobuf/x;

    return-void
.end method


# virtual methods
.method public convertKeyAndValueToMessage(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/protobuf/Message;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MapField$do;->do:Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->break()Lcom/google/protobuf/x$if;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/x$if;->const(Ljava/lang/Object;)Lcom/google/protobuf/x$if;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/protobuf/x$if;->throw(Ljava/lang/Object;)Lcom/google/protobuf/x$if;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/x$if;->for()Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1
.end method

.method public convertMessageToKeyAndValue(Lcom/google/protobuf/Message;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Message;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/protobuf/x;

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/x;->case()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/x;->goto()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getMessageDefaultInstance()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/MapField$do;->do:Lcom/google/protobuf/x;

    return-object v0
.end method
