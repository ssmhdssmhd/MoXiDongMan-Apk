.class public Landroid/support/v4/o4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final do:Ljava/lang/String;

.field public for:Landroid/support/v4/o4;

.field public if:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/o4;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public case()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final do()I
    .locals 2

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Landroid/support/v4/o4;->for:Landroid/support/v4/o4;

    goto :goto_0

    :cond_0
    return v0
.end method

.method public else(Lorg/objectweb/asm/if;II[CI[Lorg/objectweb/asm/break;)Landroid/support/v4/o4;
    .locals 0

    new-instance p4, Landroid/support/v4/o4;

    iget-object p5, p0, Landroid/support/v4/o4;->do:Ljava/lang/String;

    invoke-direct {p4, p5}, Landroid/support/v4/o4;-><init>(Ljava/lang/String;)V

    new-array p5, p3, [B

    iput-object p5, p4, Landroid/support/v4/o4;->if:[B

    iget-object p1, p1, Lorg/objectweb/asm/if;->do:[B

    const/4 p6, 0x0

    invoke-static {p1, p2, p5, p6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p4
.end method

.method public final for(Lorg/objectweb/asm/for;[BIIILandroid/support/v4/ee;)V
    .locals 7

    move-object v6, p0

    :goto_0
    if-eqz v6, :cond_0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/o4;->goto(Lorg/objectweb/asm/for;[BIII)Landroid/support/v4/ee;

    move-result-object v0

    iget-object v1, v6, Landroid/support/v4/o4;->do:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p6, v1}, Landroid/support/v4/ee;->this(I)Landroid/support/v4/ee;

    move-result-object v1

    iget v2, v0, Landroid/support/v4/ee;->if:I

    invoke-virtual {v1, v2}, Landroid/support/v4/ee;->else(I)Landroid/support/v4/ee;

    iget-object v1, v0, Landroid/support/v4/ee;->do:[B

    const/4 v2, 0x0

    iget v0, v0, Landroid/support/v4/ee;->if:I

    invoke-virtual {p6, v1, v2, v0}, Landroid/support/v4/ee;->case([BII)Landroid/support/v4/ee;

    iget-object v6, v6, Landroid/support/v4/o4;->for:Landroid/support/v4/o4;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public goto(Lorg/objectweb/asm/for;[BIII)Landroid/support/v4/ee;
    .locals 0

    new-instance p1, Landroid/support/v4/ee;

    invoke-direct {p1}, Landroid/support/v4/ee;-><init>()V

    iget-object p2, p0, Landroid/support/v4/o4;->if:[B

    iput-object p2, p1, Landroid/support/v4/ee;->do:[B

    array-length p2, p2

    iput p2, p1, Landroid/support/v4/ee;->if:I

    return-object p1
.end method

.method public final if(Lorg/objectweb/asm/for;[BIII)I
    .locals 8

    const/4 v0, 0x0

    move-object v7, p0

    :goto_0
    if-eqz v7, :cond_0

    iget-object v1, v7, Landroid/support/v4/o4;->do:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/o4;->goto(Lorg/objectweb/asm/for;[BIII)Landroid/support/v4/ee;

    move-result-object v1

    iget v1, v1, Landroid/support/v4/ee;->if:I

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget-object v7, v7, Landroid/support/v4/o4;->for:Landroid/support/v4/o4;

    goto :goto_0

    :cond_0
    return v0
.end method

.method public new()[Lorg/objectweb/asm/break;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public try()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
