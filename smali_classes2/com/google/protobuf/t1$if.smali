.class public final Lcom/google/protobuf/t1$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLite$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/protobuf/t1$for;",
            ">;"
        }
    .end annotation
.end field

.field private for:Lcom/google/protobuf/t1$for$do;

.field private if:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private catch(I)Lcom/google/protobuf/t1$for$do;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t1$if;->for:Lcom/google/protobuf/t1$for$do;

    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, Lcom/google/protobuf/t1$if;->if:I

    if-ne p1, v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/t1$for$do;->else()Lcom/google/protobuf/t1$for;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/t1$if;->if(ILcom/google/protobuf/t1$for;)Lcom/google/protobuf/t1$if;

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/t1$if;->do:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t1$for;

    .line 5
    iput p1, p0, Lcom/google/protobuf/t1$if;->if:I

    .line 6
    invoke-static {}, Lcom/google/protobuf/t1$for;->return()Lcom/google/protobuf/t1$for$do;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/t1$if;->for:Lcom/google/protobuf/t1$for$do;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/protobuf/t1$for$do;->break(Lcom/google/protobuf/t1$for;)Lcom/google/protobuf/t1$for$do;

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/t1$if;->for:Lcom/google/protobuf/t1$for$do;

    return-object p1
.end method

.method public static synthetic do()Lcom/google/protobuf/t1$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/t1$if;->this()Lcom/google/protobuf/t1$if;

    move-result-object v0

    return-object v0
.end method

.method private private()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/t1$if;->do:Ljava/util/Map;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/protobuf/t1$if;->if:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/protobuf/t1$if;->for:Lcom/google/protobuf/t1$for$do;

    return-void
.end method

.method private static this()Lcom/google/protobuf/t1$if;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/t1$if;

    invoke-direct {v0}, Lcom/google/protobuf/t1$if;-><init>()V

    .line 2
    invoke-direct {v0}, Lcom/google/protobuf/t1$if;->private()V

    return-object v0
.end method


# virtual methods
.method public break()Lcom/google/protobuf/t1;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/t1;->for()Lcom/google/protobuf/t1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t1$if;->try()Lcom/google/protobuf/t1;

    move-result-object v0

    return-object v0
.end method

.method public case()Lcom/google/protobuf/t1$if;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/t1$if;->private()V

    return-object p0
.end method

.method public class(I)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    iget v0, p0, Lcom/google/protobuf/t1$if;->if:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/t1$if;->do:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    .line 2
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Zero is not a valid field number."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t1$if;->case()Lcom/google/protobuf/t1$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t1$if;->goto()Lcom/google/protobuf/t1$if;

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

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/t1$if;->goto()Lcom/google/protobuf/t1$if;

    move-result-object v0

    return-object v0
.end method

.method public const(ILcom/google/protobuf/t1$for;)Lcom/google/protobuf/t1$if;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t1$if;->class(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/t1$if;->catch(I)Lcom/google/protobuf/t1$for$do;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/protobuf/t1$for$do;->break(Lcom/google/protobuf/t1$for;)Lcom/google/protobuf/t1$for$do;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t1$if;->if(ILcom/google/protobuf/t1$for;)Lcom/google/protobuf/t1$if;

    :goto_0
    return-object p0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public default([BIILcom/google/protobuf/implements;)Lcom/google/protobuf/t1$if;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/t1$if;->throws([BII)Lcom/google/protobuf/t1$if;

    move-result-object p1

    return-object p1
.end method

.method public else(I)Lcom/google/protobuf/t1$if;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t1$if;->for:Lcom/google/protobuf/t1$for$do;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/t1$if;->if:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/t1$if;->for:Lcom/google/protobuf/t1$for$do;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/protobuf/t1$if;->if:I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/t1$if;->do:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/t1$if;->do:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Zero is not a valid field number."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public extends([BLcom/google/protobuf/implements;)Lcom/google/protobuf/t1$if;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t1$if;->switch([B)Lcom/google/protobuf/t1$if;

    move-result-object p1

    return-object p1
.end method

.method public final(ILcom/google/protobuf/CodedInputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/c2;->do(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/c2;->if(I)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/protobuf/t1$if;->catch(I)Lcom/google/protobuf/t1$for$do;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->finally()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/t1$for$do;->if(I)Lcom/google/protobuf/t1$for$do;

    return v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/protobuf/n;->invalidWireType()Lcom/google/protobuf/n$do;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 5
    :cond_2
    invoke-static {}, Lcom/google/protobuf/t1;->this()Lcom/google/protobuf/t1$if;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/protobuf/protected;->static()Lcom/google/protobuf/protected;

    move-result-object v2

    invoke-virtual {p2, v0, p1, v2}, Lcom/google/protobuf/CodedInputStream;->continue(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/implements;)V

    .line 7
    invoke-direct {p0, v0}, Lcom/google/protobuf/t1$if;->catch(I)Lcom/google/protobuf/t1$for$do;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/protobuf/t1$for$do;->new(Lcom/google/protobuf/t1;)Lcom/google/protobuf/t1$for$do;

    return v1

    .line 8
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/protobuf/t1$if;->catch(I)Lcom/google/protobuf/t1$for$do;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->throws()Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/t1$for$do;->try(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/t1$for$do;

    return v1

    .line 9
    :cond_4
    invoke-direct {p0, v0}, Lcom/google/protobuf/t1$if;->catch(I)Lcom/google/protobuf/t1$for$do;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->package()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/t1$for$do;->for(J)Lcom/google/protobuf/t1$for$do;

    return v1

    .line 10
    :cond_5
    invoke-direct {p0, v0}, Lcom/google/protobuf/t1$if;->catch(I)Lcom/google/protobuf/t1$for$do;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->volatile()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/t1$for$do;->case(J)Lcom/google/protobuf/t1$for$do;

    return v1
.end method

.method public finally(ILcom/google/protobuf/ByteString;)Lcom/google/protobuf/t1$if;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/t1$if;->catch(I)Lcom/google/protobuf/t1$for$do;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/protobuf/t1$for$do;->try(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/t1$for$do;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public for()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/protobuf/t1$for;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/t1$if;->catch(I)Lcom/google/protobuf/t1$for$do;

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t1$if;->do:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t1$if;->break()Lcom/google/protobuf/t1;

    move-result-object v0

    return-object v0
.end method

.method public goto()Lcom/google/protobuf/t1$if;
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/t1$if;->catch(I)Lcom/google/protobuf/t1$for$do;

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t1$if;->do:Ljava/util/Map;

    check-cast v0, Ljava/util/TreeMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/google/protobuf/t1;->this()Lcom/google/protobuf/t1$if;

    move-result-object v1

    new-instance v2, Lcom/google/protobuf/t1;

    iget-object v3, p0, Lcom/google/protobuf/t1$if;->do:Ljava/util/Map;

    invoke-direct {v2, v3, v0}, Lcom/google/protobuf/t1;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/google/protobuf/t1$if;->public(Lcom/google/protobuf/t1;)Lcom/google/protobuf/t1$if;

    move-result-object v0

    return-object v0
.end method

.method public if(ILcom/google/protobuf/t1$for;)Lcom/google/protobuf/t1$if;
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t1$if;->for:Lcom/google/protobuf/t1$for$do;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/t1$if;->if:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/t1$if;->for:Lcom/google/protobuf/t1$for$do;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/protobuf/t1$if;->if:I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/t1$if;->do:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/t1$if;->do:Ljava/util/Map;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/t1$if;->do:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public import(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/t1$if;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t1$if;->while(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/t1$if;

    move-result-object p1

    return-object p1
.end method

.method public isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-static {v0, p1}, Lcom/google/protobuf/CodedInputStream;->b(ILjava/io/InputStream;)I

    move-result v0

    .line 3
    new-instance v1, Lcom/google/protobuf/AbstractMessageLite$do$do;

    invoke-direct {v1, p1, v0}, Lcom/google/protobuf/AbstractMessageLite$do$do;-><init>(Ljava/io/InputStream;I)V

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/protobuf/t1$if;->return(Ljava/io/InputStream;)Lcom/google/protobuf/t1$if;

    const/4 p1, 0x1

    return p1
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t1$if;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t1$if;->super(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/t1$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t1$if;->throw(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/google/protobuf/t1$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t1$if;->while(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/t1$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t1$if;->import(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/t1$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t1$if;->native(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/t1$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t1$if;->return(Ljava/io/InputStream;)Lcom/google/protobuf/t1$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t1$if;->static(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/t1$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t1$if;->switch([B)Lcom/google/protobuf/t1$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/t1$if;->throws([BII)Lcom/google/protobuf/t1$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/t1$if;->default([BIILcom/google/protobuf/implements;)Lcom/google/protobuf/t1$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t1$if;->extends([BLcom/google/protobuf/implements;)Lcom/google/protobuf/t1$if;

    move-result-object p1

    return-object p1
.end method

.method public native(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/t1$if;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/t1;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/t1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t1$if;->public(Lcom/google/protobuf/t1;)Lcom/google/protobuf/t1$if;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public new()Lcom/google/protobuf/t1;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/t1$if;->catch(I)Lcom/google/protobuf/t1$for$do;

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t1$if;->do:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/protobuf/t1;->for()Lcom/google/protobuf/t1;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/t1$if;->do:Ljava/util/Map;

    check-cast v0, Ljava/util/TreeMap;

    .line 5
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/google/protobuf/t1;

    iget-object v2, p0, Lcom/google/protobuf/t1$if;->do:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/protobuf/t1;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    move-object v0, v1

    :goto_0
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/google/protobuf/t1$if;->do:Ljava/util/Map;

    return-object v0
.end method

.method public package(II)Lcom/google/protobuf/t1$if;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/t1$if;->catch(I)Lcom/google/protobuf/t1$for$do;

    move-result-object p1

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/t1$for$do;->case(J)Lcom/google/protobuf/t1$for$do;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public public(Lcom/google/protobuf/t1;)Lcom/google/protobuf/t1$if;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/protobuf/t1;->for()Lcom/google/protobuf/t1;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/t1;->do(Lcom/google/protobuf/t1;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t1$for;

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/t1$if;->const(ILcom/google/protobuf/t1$for;)Lcom/google/protobuf/t1$if;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public return(Ljava/io/InputStream;)Lcom/google/protobuf/t1$if;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->break(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t1$if;->while(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/t1$if;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->do(I)V

    return-object p0
.end method

.method public static(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/t1$if;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t1$if;->return(Ljava/io/InputStream;)Lcom/google/protobuf/t1$if;

    move-result-object p1

    return-object p1
.end method

.method public super(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/t1$if;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->newCodedInput()Lcom/google/protobuf/CodedInputStream;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t1$if;->while(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/t1$if;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->do(I)V
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 5
    throw p1
.end method

.method public switch([B)Lcom/google/protobuf/t1$if;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->throw([B)Lcom/google/protobuf/CodedInputStream;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t1$if;->while(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/t1$if;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->do(I)V
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 5
    throw p1
.end method

.method public throw(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/google/protobuf/t1$if;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t1$if;->super(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/t1$if;

    move-result-object p1

    return-object p1
.end method

.method public throws([BII)Lcom/google/protobuf/t1$if;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/CodedInputStream;->while([BII)Lcom/google/protobuf/CodedInputStream;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t1$if;->while(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/t1$if;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/protobuf/CodedInputStream;->do(I)V
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 5
    throw p1
.end method

.method public try()Lcom/google/protobuf/t1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object v0

    return-object v0
.end method

.method public while(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/t1$if;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->l()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/t1$if;->final(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-object p0
.end method
