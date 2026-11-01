.class public Lcom/google/protobuf/implements;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/implements$if;,
        Lcom/google/protobuf/implements$do;
    }
.end annotation


# static fields
.field public static final case:Lcom/google/protobuf/implements;

.field private static for:Z = true

.field private static volatile if:Z = false

.field public static final new:Ljava/lang/String; = "com.google.protobuf.Extension"

.field private static volatile try:Lcom/google/protobuf/implements;


# instance fields
.field private final do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/protobuf/implements$if;",
            "Lcom/google/protobuf/GeneratedMessageLite$else<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/implements;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/implements;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/implements;->case:Lcom/google/protobuf/implements;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/implements;->do:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/implements;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/google/protobuf/implements;->case:Lcom/google/protobuf/implements;

    if-ne p1, v0, :cond_0

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/implements;->do:Ljava/util/Map;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/google/protobuf/implements;->do:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/implements;->do:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/implements;->do:Ljava/util/Map;

    return-void
.end method

.method public static case()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/implements;->if:Z

    return v0
.end method

.method public static else()Lcom/google/protobuf/implements;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/implements;->for:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/protobuf/transient;->do()Lcom/google/protobuf/implements;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/protobuf/implements;

    invoke-direct {v0}, Lcom/google/protobuf/implements;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static goto(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/google/protobuf/implements;->if:Z

    return-void
.end method

.method public static new()Lcom/google/protobuf/implements;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/protobuf/implements;->try:Lcom/google/protobuf/implements;

    if-nez v0, :cond_2

    .line 2
    const-class v1, Lcom/google/protobuf/implements;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/google/protobuf/implements;->try:Lcom/google/protobuf/implements;

    if-nez v0, :cond_1

    .line 4
    sget-boolean v0, Lcom/google/protobuf/implements;->for:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/google/protobuf/transient;->if()Lcom/google/protobuf/implements;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/google/protobuf/implements;->case:Lcom/google/protobuf/implements;

    :goto_0
    sput-object v0, Lcom/google/protobuf/implements;->try:Lcom/google/protobuf/implements;

    .line 7
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final do(Lcom/google/protobuf/interface;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/interface<",
            "**>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/protobuf/GeneratedMessageLite$else;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$else;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/implements;->if(Lcom/google/protobuf/GeneratedMessageLite$else;)V

    .line 3
    :cond_0
    sget-boolean v0, Lcom/google/protobuf/implements;->for:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/google/protobuf/transient;->new(Lcom/google/protobuf/implements;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "add"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Lcom/google/protobuf/implements$do;->do:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "Could not invoke ExtensionRegistry#add for %s"

    .line 6
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    :goto_0
    return-void
.end method

.method public for(Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$else;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/MessageLite;",
            ">(TContainingType;I)",
            "Lcom/google/protobuf/GeneratedMessageLite$else<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/implements;->do:Ljava/util/Map;

    new-instance v1, Lcom/google/protobuf/implements$if;

    invoke-direct {v1, p1, p2}, Lcom/google/protobuf/implements$if;-><init>(Ljava/lang/Object;I)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$else;

    return-object p1
.end method

.method public final if(Lcom/google/protobuf/GeneratedMessageLite$else;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageLite$else<",
            "**>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/implements;->do:Ljava/util/Map;

    new-instance v1, Lcom/google/protobuf/implements$if;

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$else;->goto()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$else;->new()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/protobuf/implements$if;-><init>(Ljava/lang/Object;I)V

    .line 3
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public try()Lcom/google/protobuf/implements;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/implements;

    invoke-direct {v0, p0}, Lcom/google/protobuf/implements;-><init>(Lcom/google/protobuf/implements;)V

    return-object v0
.end method
