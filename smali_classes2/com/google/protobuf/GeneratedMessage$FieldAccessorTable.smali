.class public final Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldAccessorTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$try;,
        Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$goto;,
        Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$this;,
        Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$for;,
        Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$case;,
        Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$do;,
        Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$new;,
        Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$else;,
        Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$if;,
        Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;
    }
.end annotation


# instance fields
.field private final do:Lcom/google/protobuf/Descriptors$if;

.field private for:[Ljava/lang/String;

.field private final if:[Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

.field private final new:[Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$if;

.field private volatile try:Z


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->do:Lcom/google/protobuf/Descriptors$if;

    .line 5
    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->for:[Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$if;->super()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->if:[Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$if;->import()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$if;

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->new:[Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$if;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->try:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$if;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/GeneratedMessage;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/GeneratedMessage$case;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p3, p4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->try(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private case(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->do:Lcom/google/protobuf/Descriptors$if;

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->if:[Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->throw()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This type does not have extensions."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic do(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/Descriptors$if;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->do:Lcom/google/protobuf/Descriptors$if;

    return-object p0
.end method

.method private else(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$if;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$break;->break()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->do:Lcom/google/protobuf/Descriptors$if;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->new:[Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$if;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$break;->final()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OneofDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic for(Lcom/google/protobuf/Descriptors$FileDescriptor;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->this(Lcom/google/protobuf/Descriptors$FileDescriptor;)Z

    move-result p0

    return p0
.end method

.method private goto(Lcom/google/protobuf/Descriptors$else;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic if(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$if;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->else(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$if;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic new(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->case(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p0

    return-object p0
.end method

.method private static this(Lcom/google/protobuf/Descriptors$FileDescriptor;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->static()Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/Descriptors$FileDescriptor$do;->PROTO2:Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public try(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/GeneratedMessage;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/GeneratedMessage$case;",
            ">;)",
            "Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->try:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->try:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object p0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->if:[Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_a

    .line 5
    iget-object v4, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->do:Lcom/google/protobuf/Descriptors$if;

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$if;->super()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/google/protobuf/Descriptors$else;

    .line 6
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$else;->catch()Lcom/google/protobuf/Descriptors$break;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->for:[Ljava/lang/String;

    .line 8
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$else;->catch()Lcom/google/protobuf/Descriptors$break;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$break;->final()I

    move-result v4

    add-int/2addr v4, v0

    aget-object v3, v3, v4

    :cond_2
    move-object v10, v3

    .line 9
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v3, v4, :cond_4

    .line 11
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$else;->finally()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->goto(Lcom/google/protobuf/Descriptors$else;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->if:[Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    new-instance v4, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$do;

    iget-object v5, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->for:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v6, v5, p1, p2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$do;-><init>(Lcom/google/protobuf/Descriptors$else;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto/16 :goto_1

    .line 13
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->if:[Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    new-instance v4, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$try;

    iget-object v5, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->for:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v6, v5, p1, p2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$try;-><init>(Lcom/google/protobuf/Descriptors$else;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto/16 :goto_1

    .line 14
    :cond_4
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$else$do;->ENUM:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v3, v4, :cond_5

    .line 15
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->if:[Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    new-instance v4, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$for;

    iget-object v5, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->for:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v6, v5, p1, p2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$for;-><init>(Lcom/google/protobuf/Descriptors$else;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto/16 :goto_1

    .line 16
    :cond_5
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->if:[Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    new-instance v4, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$new;

    iget-object v5, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->for:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v6, v5, p1, p2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$new;-><init>(Lcom/google/protobuf/Descriptors$else;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto :goto_1

    .line 17
    :cond_6
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v3, v4, :cond_7

    .line 18
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->if:[Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    new-instance v4, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$goto;

    iget-object v5, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->for:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$goto;-><init>(Lcom/google/protobuf/Descriptors$else;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_1

    .line 19
    :cond_7
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$else$do;->ENUM:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v3, v4, :cond_8

    .line 20
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->if:[Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    new-instance v4, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$case;

    iget-object v5, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->for:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$case;-><init>(Lcom/google/protobuf/Descriptors$else;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_1

    .line 21
    :cond_8
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$else$do;->STRING:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v3, v4, :cond_9

    .line 22
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->if:[Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    new-instance v4, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$this;

    iget-object v5, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->for:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$this;-><init>(Lcom/google/protobuf/Descriptors$else;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_1

    .line 23
    :cond_9
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->if:[Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    new-instance v4, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$else;

    iget-object v5, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->for:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$else;-><init>(Lcom/google/protobuf/Descriptors$else;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 24
    :cond_a
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->new:[Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$if;

    array-length v2, v2

    :goto_2
    if-ge v1, v2, :cond_b

    .line 25
    iget-object v4, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->new:[Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$if;

    new-instance v5, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$if;

    iget-object v6, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->do:Lcom/google/protobuf/Descriptors$if;

    iget-object v7, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->for:[Ljava/lang/String;

    add-int v8, v1, v0

    aget-object v7, v7, v8

    invoke-direct {v5, v6, v7, p1, p2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$if;-><init>(Lcom/google/protobuf/Descriptors$if;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->try:Z

    .line 27
    iput-object v3, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->for:[Ljava/lang/String;

    .line 28
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
