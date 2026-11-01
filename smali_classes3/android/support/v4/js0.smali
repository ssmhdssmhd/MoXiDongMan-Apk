.class public Landroid/support/v4/js0;
.super Landroid/support/v4/switch;
.source "SourceFile"


# instance fields
.field private final else:Lorg/antlr/v4/runtime/atn/if;

.field private final goto:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/finally;ILorg/antlr/v4/runtime/atn/else;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/atn/break;->do:Lorg/antlr/v4/runtime/atn/break;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/finally;ILorg/antlr/v4/runtime/atn/else;Lorg/antlr/v4/runtime/atn/break;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroid/support/v4/js0;->goto:Z

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroid/support/v4/js0;->else:Lorg/antlr/v4/runtime/atn/if;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/finally;ILorg/antlr/v4/runtime/atn/else;Lorg/antlr/v4/runtime/atn/if;)V
    .locals 1

    .line 4
    sget-object v0, Lorg/antlr/v4/runtime/atn/break;->do:Lorg/antlr/v4/runtime/atn/break;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/finally;ILorg/antlr/v4/runtime/atn/else;Lorg/antlr/v4/runtime/atn/break;)V

    .line 5
    iput-object p4, p0, Landroid/support/v4/js0;->else:Lorg/antlr/v4/runtime/atn/if;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Landroid/support/v4/js0;->goto:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/js0;Landroid/support/v4/finally;)V
    .locals 2

    .line 7
    iget-object v0, p1, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    iget-object v1, p1, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Landroid/support/v4/finally;Lorg/antlr/v4/runtime/atn/else;Lorg/antlr/v4/runtime/atn/break;)V

    .line 8
    iget-object v0, p1, Landroid/support/v4/js0;->else:Lorg/antlr/v4/runtime/atn/if;

    iput-object v0, p0, Landroid/support/v4/js0;->else:Lorg/antlr/v4/runtime/atn/if;

    .line 9
    invoke-static {p1, p2}, Landroid/support/v4/js0;->case(Landroid/support/v4/js0;Landroid/support/v4/finally;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v4/js0;->goto:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/js0;Landroid/support/v4/finally;Lorg/antlr/v4/runtime/atn/else;)V
    .locals 1

    .line 13
    iget-object v0, p1, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Landroid/support/v4/finally;Lorg/antlr/v4/runtime/atn/else;Lorg/antlr/v4/runtime/atn/break;)V

    .line 14
    iget-object p3, p1, Landroid/support/v4/js0;->else:Lorg/antlr/v4/runtime/atn/if;

    iput-object p3, p0, Landroid/support/v4/js0;->else:Lorg/antlr/v4/runtime/atn/if;

    .line 15
    invoke-static {p1, p2}, Landroid/support/v4/js0;->case(Landroid/support/v4/js0;Landroid/support/v4/finally;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v4/js0;->goto:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/js0;Landroid/support/v4/finally;Lorg/antlr/v4/runtime/atn/if;)V
    .locals 2

    .line 10
    iget-object v0, p1, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    iget-object v1, p1, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Landroid/support/v4/finally;Lorg/antlr/v4/runtime/atn/else;Lorg/antlr/v4/runtime/atn/break;)V

    .line 11
    iput-object p3, p0, Landroid/support/v4/js0;->else:Lorg/antlr/v4/runtime/atn/if;

    .line 12
    invoke-static {p1, p2}, Landroid/support/v4/js0;->case(Landroid/support/v4/js0;Landroid/support/v4/finally;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v4/js0;->goto:Z

    return-void
.end method

.method private static case(Landroid/support/v4/js0;Landroid/support/v4/finally;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/support/v4/js0;->goto:Z

    if-nez p0, :cond_1

    instance-of p0, p1, Landroid/support/v4/jx;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/support/v4/jx;

    iget-boolean p0, p1, Landroid/support/v4/jx;->throws:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public do(Landroid/support/v4/switch;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Landroid/support/v4/js0;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 2
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/support/v4/js0;

    .line 3
    iget-boolean v2, p0, Landroid/support/v4/js0;->goto:Z

    iget-boolean v3, v0, Landroid/support/v4/js0;->goto:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    sget-object v2, Landroid/support/v4/r51;->do:Landroid/support/v4/r51;

    iget-object v3, p0, Landroid/support/v4/js0;->else:Lorg/antlr/v4/runtime/atn/if;

    iget-object v0, v0, Landroid/support/v4/js0;->else:Lorg/antlr/v4/runtime/atn/if;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/r51;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-super {p0, p1}, Landroid/support/v4/switch;->do(Landroid/support/v4/switch;)Z

    move-result p1

    return p1
.end method

.method public final else()Lorg/antlr/v4/runtime/atn/if;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/js0;->else:Lorg/antlr/v4/runtime/atn/if;

    return-object v0
.end method

.method public final goto()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/js0;->goto:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x7

    .line 1
    invoke-static {v0}, Landroid/support/v4/y01;->new(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    iget v1, v1, Landroid/support/v4/finally;->if:I

    invoke-static {v0, v1}, Landroid/support/v4/y01;->try(II)I

    move-result v0

    .line 3
    iget v1, p0, Landroid/support/v4/switch;->if:I

    invoke-static {v0, v1}, Landroid/support/v4/y01;->try(II)I

    move-result v0

    .line 4
    iget-object v1, p0, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-static {v0, v1}, Landroid/support/v4/y01;->case(ILjava/lang/Object;)I

    move-result v0

    .line 5
    iget-object v1, p0, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    invoke-static {v0, v1}, Landroid/support/v4/y01;->case(ILjava/lang/Object;)I

    move-result v0

    .line 6
    iget-boolean v1, p0, Landroid/support/v4/js0;->goto:Z

    invoke-static {v0, v1}, Landroid/support/v4/y01;->try(II)I

    move-result v0

    .line 7
    iget-object v1, p0, Landroid/support/v4/js0;->else:Lorg/antlr/v4/runtime/atn/if;

    invoke-static {v0, v1}, Landroid/support/v4/y01;->case(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x6

    .line 8
    invoke-static {v0, v1}, Landroid/support/v4/y01;->do(II)I

    move-result v0

    return v0
.end method
