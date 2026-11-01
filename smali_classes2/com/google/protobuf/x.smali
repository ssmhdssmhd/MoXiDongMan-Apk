.class public final Lcom/google/protobuf/x;
.super Lcom/google/protobuf/AbstractMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/x$if;,
        Lcom/google/protobuf/x$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/AbstractMessage;"
    }
.end annotation


# instance fields
.field private final do:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final for:Lcom/google/protobuf/x$for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/x$for<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final if:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private volatile new:I


# direct methods
.method private constructor <init>(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/c2$if;Ljava/lang/Object;Lcom/google/protobuf/c2$if;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$if;",
            "Lcom/google/protobuf/c2$if;",
            "TK;",
            "Lcom/google/protobuf/c2$if;",
            "TV;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/protobuf/x;->new:I

    .line 5
    iput-object p3, p0, Lcom/google/protobuf/x;->do:Ljava/lang/Object;

    .line 6
    iput-object p5, p0, Lcom/google/protobuf/x;->if:Ljava/lang/Object;

    .line 7
    new-instance p3, Lcom/google/protobuf/x$for;

    invoke-direct {p3, p1, p0, p2, p4}, Lcom/google/protobuf/x$for;-><init>(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/x;Lcom/google/protobuf/c2$if;Lcom/google/protobuf/c2$if;)V

    iput-object p3, p0, Lcom/google/protobuf/x;->for:Lcom/google/protobuf/x$for;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/x$for;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/x$for<",
            "TK;TV;>;",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/implements;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/google/protobuf/x;->new:I

    .line 15
    :try_start_0
    iput-object p1, p0, Lcom/google/protobuf/x;->for:Lcom/google/protobuf/x$for;

    .line 16
    invoke-static {p2, p1, p3}, Lcom/google/protobuf/y;->goto(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/y$if;Lcom/google/protobuf/implements;)Ljava/util/Map$Entry;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/x;->do:Ljava/lang/Object;

    .line 18
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/x;->if:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 19
    new-instance p2, Lcom/google/protobuf/n;

    invoke-direct {p2, p1}, Lcom/google/protobuf/n;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 20
    invoke-virtual {p1, p0}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/x$for;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/google/protobuf/x$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/x$for;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/x$for;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/x$for;",
            "TK;TV;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/google/protobuf/x;->new:I

    .line 10
    iput-object p2, p0, Lcom/google/protobuf/x;->do:Ljava/lang/Object;

    .line 11
    iput-object p3, p0, Lcom/google/protobuf/x;->if:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lcom/google/protobuf/x;->for:Lcom/google/protobuf/x$for;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/x$for;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/protobuf/x$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/x$for;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static catch(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/c2$if;Ljava/lang/Object;Lcom/google/protobuf/c2$if;Ljava/lang/Object;)Lcom/google/protobuf/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Descriptors$if;",
            "Lcom/google/protobuf/c2$if;",
            "TK;",
            "Lcom/google/protobuf/c2$if;",
            "TV;)",
            "Lcom/google/protobuf/x<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/protobuf/x;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/c2$if;Ljava/lang/Object;Lcom/google/protobuf/c2$if;Ljava/lang/Object;)V

    return-object v6
.end method

.method public static synthetic do(Lcom/google/protobuf/x;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/x;->do:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic for(Lcom/google/protobuf/x$for;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/protobuf/x;->this(Lcom/google/protobuf/x$for;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic if(Lcom/google/protobuf/x;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/x;->if:Ljava/lang/Object;

    return-object p0
.end method

.method private new(Lcom/google/protobuf/Descriptors$else;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/x;->for:Lcom/google/protobuf/x$for;

    iget-object v1, v1, Lcom/google/protobuf/x$for;->try:Lcom/google/protobuf/Descriptors$if;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->if()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/protobuf/x;->for:Lcom/google/protobuf/x$for;

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

.method private static this(Lcom/google/protobuf/x$for;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/x$for;",
            "TV;)Z"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/y$if;->for:Lcom/google/protobuf/c2$if;

    invoke-virtual {p0}, Lcom/google/protobuf/c2$if;->getJavaType()Lcom/google/protobuf/c2$for;

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/c2$for;->MESSAGE:Lcom/google/protobuf/c2$for;

    if-ne p0, v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/MessageLite;

    invoke-interface {p1}, Lcom/google/protobuf/MessageLiteOrBuilder;->isInitialized()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public break()Lcom/google/protobuf/x$if;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/x$if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/x$if;

    iget-object v1, p0, Lcom/google/protobuf/x;->for:Lcom/google/protobuf/x$for;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/x$if;-><init>(Lcom/google/protobuf/x$for;Lcom/google/protobuf/x$do;)V

    return-object v0
.end method

.method public case()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/x;->do:Ljava/lang/Object;

    return-object v0
.end method

.method public class()Lcom/google/protobuf/x$if;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/x$if<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/google/protobuf/x$if;

    iget-object v1, p0, Lcom/google/protobuf/x;->for:Lcom/google/protobuf/x$for;

    iget-object v2, p0, Lcom/google/protobuf/x;->do:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/protobuf/x;->if:Ljava/lang/Object;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/x$if;-><init>(Lcom/google/protobuf/x$for;Ljava/lang/Object;Ljava/lang/Object;ZZLcom/google/protobuf/x$do;)V

    return-object v7
.end method

.method public final else()Lcom/google/protobuf/x$for;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/x$for<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/x;->for:Lcom/google/protobuf/x$for;

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
    iget-object v1, p0, Lcom/google/protobuf/x;->for:Lcom/google/protobuf/x$for;

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
    invoke-virtual {p0, v2}, Lcom/google/protobuf/x;->hasField(Lcom/google/protobuf/Descriptors$else;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Lcom/google/protobuf/x;->getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;

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
    invoke-virtual {p0}, Lcom/google/protobuf/x;->try()Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/x;->try()Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/x;->for:Lcom/google/protobuf/x$for;

    iget-object v0, v0, Lcom/google/protobuf/x$for;->try:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/x;->new(Lcom/google/protobuf/Descriptors$else;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/x;->case()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/x;->goto()Ljava/lang/Object;

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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/x<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/x;->for:Lcom/google/protobuf/x$for;

    iget-object v0, v0, Lcom/google/protobuf/x$for;->case:Lcom/google/protobuf/Parser;

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

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/x;->new:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/google/protobuf/x;->new:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/x;->for:Lcom/google/protobuf/x$for;

    iget-object v1, p0, Lcom/google/protobuf/x;->do:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/protobuf/x;->if:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/y;->if(Lcom/google/protobuf/y$if;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 4
    iput v0, p0, Lcom/google/protobuf/x;->new:I

    return v0
.end method

.method public getUnknownFields()Lcom/google/protobuf/t1;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/t1;->for()Lcom/google/protobuf/t1;

    move-result-object v0

    return-object v0
.end method

.method public goto()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/x;->if:Ljava/lang/Object;

    return-object v0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$else;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/x;->new(Lcom/google/protobuf/Descriptors$else;)V

    const/4 p1, 0x1

    return p1
.end method

.method public isInitialized()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/x;->for:Lcom/google/protobuf/x$for;

    iget-object v1, p0, Lcom/google/protobuf/x;->if:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/x;->this(Lcom/google/protobuf/x$for;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/x;->break()Lcom/google/protobuf/x$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/x;->break()Lcom/google/protobuf/x$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/x;->class()Lcom/google/protobuf/x$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/x;->class()Lcom/google/protobuf/x$if;

    move-result-object v0

    return-object v0
.end method

.method public try()Lcom/google/protobuf/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/x<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/x;

    iget-object v1, p0, Lcom/google/protobuf/x;->for:Lcom/google/protobuf/x$for;

    iget-object v2, v1, Lcom/google/protobuf/y$if;->if:Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/protobuf/y$if;->new:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/x$for;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/native;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/x;->for:Lcom/google/protobuf/x$for;

    iget-object v1, p0, Lcom/google/protobuf/x;->do:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/protobuf/x;->if:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/y;->class(Lcom/google/protobuf/native;Lcom/google/protobuf/y$if;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
