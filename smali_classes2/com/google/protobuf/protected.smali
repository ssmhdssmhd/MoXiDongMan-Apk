.class public Lcom/google/protobuf/protected;
.super Lcom/google/protobuf/implements;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/protected$if;,
        Lcom/google/protobuf/protected$for;
    }
.end annotation


# static fields
.field public static final catch:Lcom/google/protobuf/protected;


# instance fields
.field private final break:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/protobuf/protected$if;",
            "Lcom/google/protobuf/protected$for;",
            ">;"
        }
    .end annotation
.end field

.field private final else:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/protected$for;",
            ">;"
        }
    .end annotation
.end field

.field private final goto:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/protected$for;",
            ">;"
        }
    .end annotation
.end field

.field private final this:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/protobuf/protected$if;",
            "Lcom/google/protobuf/protected$for;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/protected;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/protected;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/protected;->catch:Lcom/google/protobuf/protected;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/implements;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/protected;->else:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/protected;->goto:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/protected;->this:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/protected;->break:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/protected;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/implements;-><init>(Lcom/google/protobuf/implements;)V

    .line 7
    iget-object v0, p1, Lcom/google/protobuf/protected;->else:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/protected;->else:Ljava/util/Map;

    .line 8
    iget-object v0, p1, Lcom/google/protobuf/protected;->goto:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/protected;->goto:Ljava/util/Map;

    .line 9
    iget-object v0, p1, Lcom/google/protobuf/protected;->this:Ljava/util/Map;

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/protected;->this:Ljava/util/Map;

    .line 11
    iget-object p1, p1, Lcom/google/protobuf/protected;->break:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/protected;->break:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 12
    sget-object p1, Lcom/google/protobuf/implements;->case:Lcom/google/protobuf/implements;

    invoke-direct {p0, p1}, Lcom/google/protobuf/implements;-><init>(Lcom/google/protobuf/implements;)V

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/protected;->else:Ljava/util/Map;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/protected;->goto:Ljava/util/Map;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/protected;->this:Ljava/util/Map;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/protected;->break:Ljava/util/Map;

    return-void
.end method

.method private class(Lcom/google/protobuf/protected$for;Lcom/google/protobuf/volatile$do;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/protobuf/protected$for;->do:Lcom/google/protobuf/Descriptors$else;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    sget-object v0, Lcom/google/protobuf/protected$do;->do:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/google/protobuf/protected;->goto:Ljava/util/Map;

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/protected;->break:Ljava/util/Map;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/google/protobuf/protected;->else:Ljava/util/Map;

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/protected;->this:Ljava/util/Map;

    .line 7
    :goto_0
    iget-object v1, p1, Lcom/google/protobuf/protected$for;->do:Lcom/google/protobuf/Descriptors$else;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$else;->if()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lcom/google/protobuf/protected$if;

    iget-object v2, p1, Lcom/google/protobuf/protected$for;->do:Lcom/google/protobuf/Descriptors$else;

    .line 9
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object v2

    iget-object v3, p1, Lcom/google/protobuf/protected$for;->do:Lcom/google/protobuf/Descriptors$else;

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/protobuf/protected$if;-><init>(Lcom/google/protobuf/Descriptors$if;I)V

    .line 10
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p1, Lcom/google/protobuf/protected$for;->do:Lcom/google/protobuf/Descriptors$else;

    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$if;->native()Lcom/google/protobuf/DescriptorProtos$catch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$catch;->getMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$else$if;->MESSAGE:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v1, v2, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->package()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->super()Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ExtensionRegistry.add() was given a FieldDescriptor for a regular (non-extension) field."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static default()Lcom/google/protobuf/protected;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/protected;

    invoke-direct {v0}, Lcom/google/protobuf/protected;-><init>()V

    return-object v0
.end method

.method public static static()Lcom/google/protobuf/protected;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/protected;->catch:Lcom/google/protobuf/protected;

    return-object v0
.end method

.method public static throws(Lcom/google/protobuf/volatile;)Lcom/google/protobuf/protected$for;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/volatile<",
            "**>;)",
            "Lcom/google/protobuf/protected$for;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/volatile;->break()Lcom/google/protobuf/Message;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Registered message-type extension had null default instance: "

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->if()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Lcom/google/protobuf/protected$for;

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/volatile;->break()Lcom/google/protobuf/Message;

    move-result-object p0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/protobuf/protected$for;-><init>(Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/Message;Lcom/google/protobuf/protected$do;)V

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Lcom/google/protobuf/protected$for;

    invoke-virtual {p0}, Lcom/google/protobuf/volatile;->goto()Lcom/google/protobuf/Descriptors$else;

    move-result-object p0

    invoke-direct {v0, p0, v2, v2}, Lcom/google/protobuf/protected$for;-><init>(Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/Message;Lcom/google/protobuf/protected$do;)V

    return-object v0
.end method


# virtual methods
.method public break(Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/Message;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/protected$for;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/protobuf/protected$for;-><init>(Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/Message;Lcom/google/protobuf/protected$do;)V

    sget-object p1, Lcom/google/protobuf/volatile$do;->IMMUTABLE:Lcom/google/protobuf/volatile$do;

    invoke-direct {p0, v0, p1}, Lcom/google/protobuf/protected;->class(Lcom/google/protobuf/protected$for;Lcom/google/protobuf/volatile$do;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ExtensionRegistry.add() provided a default instance for a non-message extension."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public catch(Lcom/google/protobuf/volatile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/volatile<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->this()Lcom/google/protobuf/volatile$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/volatile$do;->IMMUTABLE:Lcom/google/protobuf/volatile$do;

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->this()Lcom/google/protobuf/volatile$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/volatile$do;->MUTABLE:Lcom/google/protobuf/volatile$do;

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/protected;->throws(Lcom/google/protobuf/volatile;)Lcom/google/protobuf/protected$for;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/volatile;->this()Lcom/google/protobuf/volatile$do;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/protobuf/protected;->class(Lcom/google/protobuf/protected$for;Lcom/google/protobuf/volatile$do;)V

    return-void
.end method

.method public const(Lcom/google/protobuf/GeneratedMessage$break;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$break<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/protected;->catch(Lcom/google/protobuf/volatile;)V

    return-void
.end method

.method public final(Ljava/lang/String;)Lcom/google/protobuf/protected$for;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/protected;->throw(Ljava/lang/String;)Lcom/google/protobuf/protected$for;

    move-result-object p1

    return-object p1
.end method

.method public import(Ljava/lang/String;)Lcom/google/protobuf/protected$for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/protected;->goto:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/protected$for;

    return-object p1
.end method

.method public native(Lcom/google/protobuf/Descriptors$if;I)Lcom/google/protobuf/protected$for;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/protected;->break:Ljava/util/Map;

    new-instance v1, Lcom/google/protobuf/protected$if;

    invoke-direct {v1, p1, p2}, Lcom/google/protobuf/protected$if;-><init>(Lcom/google/protobuf/Descriptors$if;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/protected$for;

    return-object p1
.end method

.method public public(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/protobuf/protected$for;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/protected;->this:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/protected$if;

    .line 3
    invoke-static {v2}, Lcom/google/protobuf/protected$if;->do(Lcom/google/protobuf/protected$if;)Lcom/google/protobuf/Descriptors$if;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/google/protobuf/protected;->this:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public return(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/protobuf/protected$for;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/protected;->break:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/protected$if;

    .line 3
    invoke-static {v2}, Lcom/google/protobuf/protected$if;->do(Lcom/google/protobuf/protected$if;)Lcom/google/protobuf/Descriptors$if;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/google/protobuf/protected;->break:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public super(Lcom/google/protobuf/Descriptors$if;I)Lcom/google/protobuf/protected$for;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/protected;->while(Lcom/google/protobuf/Descriptors$if;I)Lcom/google/protobuf/protected$for;

    move-result-object p1

    return-object p1
.end method

.method public switch()Lcom/google/protobuf/protected;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/protected;

    invoke-direct {v0, p0}, Lcom/google/protobuf/protected;-><init>(Lcom/google/protobuf/protected;)V

    return-object v0
.end method

.method public this(Lcom/google/protobuf/Descriptors$else;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/protected$for;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/google/protobuf/protected$for;-><init>(Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/Message;Lcom/google/protobuf/protected$do;)V

    .line 3
    sget-object p1, Lcom/google/protobuf/volatile$do;->IMMUTABLE:Lcom/google/protobuf/volatile$do;

    invoke-direct {p0, v0, p1}, Lcom/google/protobuf/protected;->class(Lcom/google/protobuf/protected$for;Lcom/google/protobuf/volatile$do;)V

    .line 4
    sget-object p1, Lcom/google/protobuf/volatile$do;->MUTABLE:Lcom/google/protobuf/volatile$do;

    invoke-direct {p0, v0, p1}, Lcom/google/protobuf/protected;->class(Lcom/google/protobuf/protected$for;Lcom/google/protobuf/volatile$do;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ExtensionRegistry.add() must be provided a default instance when adding an embedded message extension."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public throw(Ljava/lang/String;)Lcom/google/protobuf/protected$for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/protected;->else:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/protected$for;

    return-object p1
.end method

.method public bridge synthetic try()Lcom/google/protobuf/implements;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/protected;->switch()Lcom/google/protobuf/protected;

    move-result-object v0

    return-object v0
.end method

.method public while(Lcom/google/protobuf/Descriptors$if;I)Lcom/google/protobuf/protected$for;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/protected;->this:Ljava/util/Map;

    new-instance v1, Lcom/google/protobuf/protected$if;

    invoke-direct {v1, p1, p2}, Lcom/google/protobuf/protected$if;-><init>(Lcom/google/protobuf/Descriptors$if;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/protected$for;

    return-object p1
.end method
