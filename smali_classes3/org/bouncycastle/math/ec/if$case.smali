.class public Lorg/bouncycastle/math/ec/if$case;
.super Lorg/bouncycastle/math/ec/if$for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "case"
.end annotation


# static fields
.field private static final public:I = 0x4


# instance fields
.field public import:Ljava/math/BigInteger;

.field public native:Lorg/bouncycastle/math/ec/new$try;

.field public while:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/if$case;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/math/ec/if$for;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/if$case;->while:Ljava/math/BigInteger;

    invoke-static {p1}, Lorg/bouncycastle/math/ec/for$new;->switch(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/if$case;->import:Ljava/math/BigInteger;

    new-instance p1, Lorg/bouncycastle/math/ec/new$try;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v0, v1}, Lorg/bouncycastle/math/ec/new$try;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/if$case;->native:Lorg/bouncycastle/math/ec/new$try;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/math/ec/if$case;->super(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/if;->if:Lorg/bouncycastle/math/ec/for;

    invoke-virtual {p0, p3}, Lorg/bouncycastle/math/ec/if$case;->super(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/if;->for:Lorg/bouncycastle/math/ec/for;

    iput-object p4, p0, Lorg/bouncycastle/math/ec/if;->new:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/bouncycastle/math/ec/if;->try:Ljava/math/BigInteger;

    const/4 p1, 0x4

    iput p1, p0, Lorg/bouncycastle/math/ec/if;->case:I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/math/ec/if$case;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/math/ec/if$for;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/if$case;->while:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/math/ec/if$case;->import:Ljava/math/BigInteger;

    new-instance p1, Lorg/bouncycastle/math/ec/new$try;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, p2, v0}, Lorg/bouncycastle/math/ec/new$try;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/if$case;->native:Lorg/bouncycastle/math/ec/new$try;

    iput-object p3, p0, Lorg/bouncycastle/math/ec/if;->if:Lorg/bouncycastle/math/ec/for;

    iput-object p4, p0, Lorg/bouncycastle/math/ec/if;->for:Lorg/bouncycastle/math/ec/for;

    iput-object p5, p0, Lorg/bouncycastle/math/ec/if;->new:Ljava/math/BigInteger;

    iput-object p6, p0, Lorg/bouncycastle/math/ec/if;->try:Ljava/math/BigInteger;

    const/4 p1, 0x4

    iput p1, p0, Lorg/bouncycastle/math/ec/if;->case:I

    return-void
.end method


# virtual methods
.method public break(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)Lorg/bouncycastle/math/ec/new;
    .locals 1

    new-instance v0, Lorg/bouncycastle/math/ec/new$try;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/new$try;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)V

    return-object v0
.end method

.method public catch(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)Lorg/bouncycastle/math/ec/new;
    .locals 7

    new-instance v6, Lorg/bouncycastle/math/ec/new$try;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/new$try;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)V

    return-object v6
.end method

.method public new()Lorg/bouncycastle/math/ec/if;
    .locals 8

    new-instance v7, Lorg/bouncycastle/math/ec/if$case;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/if$case;->while:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/if$case;->import:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/if;->if:Lorg/bouncycastle/math/ec/for;

    iget-object v4, p0, Lorg/bouncycastle/math/ec/if;->for:Lorg/bouncycastle/math/ec/for;

    iget-object v5, p0, Lorg/bouncycastle/math/ec/if;->new:Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/bouncycastle/math/ec/if;->try:Ljava/math/BigInteger;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/math/ec/if$case;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v7
.end method

.method public package(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;
    .locals 8

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    if-eq p0, v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/if;->public()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->public()I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/new$try;

    iget-object v1, p1, Lorg/bouncycastle/math/ec/new;->if:Lorg/bouncycastle/math/ec/for;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/if$case;->super(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    iget-object v1, p1, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/if$case;->super(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/for;

    move-result-object v5

    const/4 v1, 0x1

    new-array v6, v1, [Lorg/bouncycastle/math/ec/for;

    iget-object v1, p1, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/if$case;->super(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    aput-object v1, v6, v2

    iget-boolean v7, p1, Lorg/bouncycastle/math/ec/new;->try:Z

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/math/ec/new$try;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)V

    return-object v0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/bouncycastle/math/ec/if;->package(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1
.end method

.method public super(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/for;
    .locals 3

    new-instance v0, Lorg/bouncycastle/math/ec/for$new;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/if$case;->while:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/if$case;->import:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/math/ec/for$new;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public switch()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/if$case;->while:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public throws()Lorg/bouncycastle/math/ec/new;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/if$case;->native:Lorg/bouncycastle/math/ec/new$try;

    return-object v0
.end method

.method public transient()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/if$case;->while:Ljava/math/BigInteger;

    return-object v0
.end method

.method public volatile(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method
