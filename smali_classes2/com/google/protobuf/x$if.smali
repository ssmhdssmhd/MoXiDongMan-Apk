.class public Lcom/google/protobuf/x$if;
.super Lcom/google/protobuf/AbstractMessage$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/AbstractMessage$do<",
        "Lcom/google/protobuf/x$if<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final do:Lcom/google/protobuf/x$for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/x$for<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private for:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private if:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private new:Z

.field private try:Z


# direct methods
.method private constructor <init>(Lcom/google/protobuf/x$for;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/x$for<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3
    iget-object v2, p1, Lcom/google/protobuf/y$if;->if:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/protobuf/y$if;->new:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/x$if;-><init>(Lcom/google/protobuf/x$for;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/x$for;Lcom/google/protobuf/x$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/x$if;-><init>(Lcom/google/protobuf/x$for;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/x$for;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/x$for<",
            "TK;TV;>;TK;TV;ZZ)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessage$do;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/protobuf/x$if;->do:Lcom/google/protobuf/x$for;

    .line 6
    iput-object p2, p0, Lcom/google/protobuf/x$if;->if:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lcom/google/protobuf/x$if;->for:Ljava/lang/Object;

    .line 8
    iput-boolean p4, p0, Lcom/google/protobuf/x$if;->new:Z

    .line 9
    iput-boolean p5, p0, Lcom/google/protobuf/x$if;->try:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/x$for;Ljava/lang/Object;Ljava/lang/Object;ZZLcom/google/protobuf/x$do;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/google/protobuf/x$if;-><init>(Lcom/google/protobuf/x$for;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method private new(Lcom/google/protobuf/Descriptors$else;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/x$if;->do:Lcom/google/protobuf/x$for;

    iget-object v1, v1, Lcom/google/protobuf/x$for;->try:Lcom/google/protobuf/Descriptors$if;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->if()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/protobuf/x$if;->do:Lcom/google/protobuf/x$for;

    iget-object v1, v1, Lcom/google/protobuf/x$for;->try:Lcom/google/protobuf/Descriptors$if;

    .line 4
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2a

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Wrong FieldDescriptor \""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" used in message \""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/x$if;->do(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/x$if;

    move-result-object p1

    return-object p1
.end method

.method public break()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/x$if;->if:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/x$if;->if()Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/x$if;->if()Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/x$if;->for()Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/x$if;->for()Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
.end method

.method public case()Lcom/google/protobuf/x$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/x$if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/x$if;->do:Lcom/google/protobuf/x$for;

    iget-object v0, v0, Lcom/google/protobuf/y$if;->if:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/x$if;->if:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/protobuf/x$if;->new:Z

    return-object p0
.end method

.method public catch()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/x$if;->for:Ljava/lang/Object;

    return-object v0
.end method

.method public class(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/x$if;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$else;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/x$if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/x$if;->new(Lcom/google/protobuf/Descriptors$else;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/protobuf/x$if;->const(Ljava/lang/Object;)Lcom/google/protobuf/x$if;

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$if;->ENUM:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v0, v1, :cond_1

    .line 5
    check-cast p2, Lcom/google/protobuf/Descriptors$case;

    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$case;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object p1

    sget-object v0, Lcom/google/protobuf/Descriptors$else$if;->MESSAGE:Lcom/google/protobuf/Descriptors$else$if;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    .line 7
    iget-object p1, p0, Lcom/google/protobuf/x$if;->do:Lcom/google/protobuf/x$for;

    iget-object p1, p1, Lcom/google/protobuf/y$if;->new:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/google/protobuf/x$if;->do:Lcom/google/protobuf/x$for;

    iget-object p1, p1, Lcom/google/protobuf/y$if;->new:Ljava/lang/Object;

    check-cast p1, Lcom/google/protobuf/Message;

    .line 9
    invoke-interface {p1}, Lcom/google/protobuf/Message;->toBuilder()Lcom/google/protobuf/Message$Builder;

    move-result-object p1

    check-cast p2, Lcom/google/protobuf/Message;

    invoke-interface {p1, p2}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object p2

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/google/protobuf/x$if;->throw(Ljava/lang/Object;)Lcom/google/protobuf/x$if;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/x$if;->try(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/x$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/x$if;->goto()Lcom/google/protobuf/x$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/x$if;->goto()Lcom/google/protobuf/x$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/x$if;->goto()Lcom/google/protobuf/x$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/x$if;->goto()Lcom/google/protobuf/x$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/x$if;->goto()Lcom/google/protobuf/x$if;

    move-result-object v0

    return-object v0
.end method

.method public const(Ljava/lang/Object;)Lcom/google/protobuf/x$if;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/protobuf/x$if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/x$if;->if:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/protobuf/x$if;->new:Z

    return-object p0
.end method

.method public do(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/x$if;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$else;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/x$if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "There is no repeated field in a map entry message."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public else()Lcom/google/protobuf/x$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/x$if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/x$if;->do:Lcom/google/protobuf/x$for;

    iget-object v0, v0, Lcom/google/protobuf/y$if;->new:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/x$if;->for:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/protobuf/x$if;->try:Z

    return-object p0
.end method

.method public final(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/x$if;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$else;",
            "I",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/x$if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "There is no repeated field in a map entry message."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public for()Lcom/google/protobuf/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/x<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/x;

    iget-object v1, p0, Lcom/google/protobuf/x$if;->do:Lcom/google/protobuf/x$for;

    iget-object v2, p0, Lcom/google/protobuf/x$if;->if:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/protobuf/x$if;->for:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/x$for;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/protobuf/x$do;)V

    return-object v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$else;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/x$if;->do:Lcom/google/protobuf/x$for;

    iget-object v1, v1, Lcom/google/protobuf/x$for;->try:Lcom/google/protobuf/Descriptors$if;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$if;->super()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$else;

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/protobuf/x$if;->hasField(Lcom/google/protobuf/Descriptors$else;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Lcom/google/protobuf/x$if;->getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/x$if;->this()Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/x$if;->this()Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/x$if;->do:Lcom/google/protobuf/x$for;

    iget-object v0, v0, Lcom/google/protobuf/x$for;->try:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/x$if;->new(Lcom/google/protobuf/Descriptors$else;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/x$if;->break()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/x$if;->catch()Ljava/lang/Object;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$else$if;->ENUM:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->final()Lcom/google/protobuf/Descriptors$try;

    move-result-object p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/Descriptors$try;->goto(I)Lcom/google/protobuf/Descriptors$case;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getRepeatedField(Lcom/google/protobuf/Descriptors$else;I)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "There is no repeated field in a map entry message."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$else;)I
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "There is no repeated field in a map entry message."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUnknownFields()Lcom/google/protobuf/t1;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/t1;->for()Lcom/google/protobuf/t1;

    move-result-object v0

    return-object v0
.end method

.method public goto()Lcom/google/protobuf/x$if;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/x$if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/protobuf/x$if;

    iget-object v1, p0, Lcom/google/protobuf/x$if;->do:Lcom/google/protobuf/x$for;

    iget-object v2, p0, Lcom/google/protobuf/x$if;->if:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/protobuf/x$if;->for:Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/google/protobuf/x$if;->new:Z

    iget-boolean v5, p0, Lcom/google/protobuf/x$if;->try:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/x$if;-><init>(Lcom/google/protobuf/x$for;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-object v6
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$else;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/x$if;->new(Lcom/google/protobuf/Descriptors$else;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/google/protobuf/x$if;->new:Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/google/protobuf/x$if;->try:Z

    :goto_0
    return p1
.end method

.method public if()Lcom/google/protobuf/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/x<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/x$if;->for()Lcom/google/protobuf/x;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/x;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$do;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Landroid/support/v4/sb2;

    move-result-object v0

    throw v0
.end method

.method public isInitialized()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/x$if;->do:Lcom/google/protobuf/x$for;

    iget-object v1, p0, Lcom/google/protobuf/x$if;->for:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/x;->for(Lcom/google/protobuf/x$for;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newBuilderForField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/x$if;->new(Lcom/google/protobuf/Descriptors$else;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/protobuf/x$if;->for:Ljava/lang/Object;

    check-cast p1, Lcom/google/protobuf/Message;

    invoke-interface {p1}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->if()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not a message value field."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/x$if;->class(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/x$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/x$if;->final(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/x$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/x$if;->super(Lcom/google/protobuf/t1;)Lcom/google/protobuf/x$if;

    move-result-object p1

    return-object p1
.end method

.method public super(Lcom/google/protobuf/t1;)Lcom/google/protobuf/x$if;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t1;",
            ")",
            "Lcom/google/protobuf/x$if<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public this()Lcom/google/protobuf/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/x<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/x;

    iget-object v1, p0, Lcom/google/protobuf/x$if;->do:Lcom/google/protobuf/x$for;

    iget-object v2, v1, Lcom/google/protobuf/y$if;->if:Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/protobuf/y$if;->new:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/x$for;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/protobuf/x$do;)V

    return-object v0
.end method

.method public throw(Ljava/lang/Object;)Lcom/google/protobuf/x$if;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/google/protobuf/x$if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/x$if;->for:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/protobuf/x$if;->try:Z

    return-object p0
.end method

.method public try(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/x$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$else;",
            ")",
            "Lcom/google/protobuf/x$if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/x$if;->new(Lcom/google/protobuf/Descriptors$else;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/x$if;->case()Lcom/google/protobuf/x$if;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/x$if;->else()Lcom/google/protobuf/x$if;

    :goto_0
    return-object p0
.end method
