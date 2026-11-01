.class public abstract Landroid/support/v4/xz0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final do:I

.field public if:Landroid/support/v4/xz0;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/xz0;-><init>(ILandroid/support/v4/xz0;)V

    return-void
.end method

.method public constructor <init>(ILandroid/support/v4/xz0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x50000

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Landroid/support/v4/xz0;->do:I

    iput-object p2, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    return-void
.end method


# virtual methods
.method public abstract(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public break(ILandroid/support/v4/p92;Ljava/lang/String;Z)Landroid/support/v4/d2;
    .locals 2

    iget v0, p0, Landroid/support/v4/xz0;->do:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/xz0;->break(ILandroid/support/v4/p92;Ljava/lang/String;Z)Landroid/support/v4/d2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public case(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/xz0;->case(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public catch(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/xz0;->catch(II)V

    :cond_0
    return-void
.end method

.method public varargs class(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/ti0;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/xz0;->class(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/ti0;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public const(ILorg/objectweb/asm/break;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/xz0;->const(ILorg/objectweb/asm/break;)V

    :cond_0
    return-void
.end method

.method public continue(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/xz0;->continue(II)V

    :cond_0
    return-void
.end method

.method public default(ILjava/lang/String;Z)Landroid/support/v4/d2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/xz0;->default(ILjava/lang/String;Z)Landroid/support/v4/d2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public do(Ljava/lang/String;Z)Landroid/support/v4/d2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/xz0;->do(Ljava/lang/String;Z)Landroid/support/v4/d2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public else(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/xz0;->else(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs extends(IILorg/objectweb/asm/break;[Lorg/objectweb/asm/break;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/xz0;->extends(IILorg/objectweb/asm/break;[Lorg/objectweb/asm/break;)V

    :cond_0
    return-void
.end method

.method public final(Lorg/objectweb/asm/break;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/xz0;->final(Lorg/objectweb/asm/break;)V

    :cond_0
    return-void
.end method

.method public finally(ILandroid/support/v4/p92;Ljava/lang/String;Z)Landroid/support/v4/d2;
    .locals 2

    iget v0, p0, Landroid/support/v4/xz0;->do:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/xz0;->finally(ILandroid/support/v4/p92;Ljava/lang/String;Z)Landroid/support/v4/d2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public for(Landroid/support/v4/o4;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/xz0;->for(Landroid/support/v4/o4;)V

    :cond_0
    return-void
.end method

.method public goto(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/xz0;->goto(II)V

    :cond_0
    return-void
.end method

.method public if()Landroid/support/v4/d2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/xz0;->if()Landroid/support/v4/d2;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public import(ILandroid/support/v4/p92;[Lorg/objectweb/asm/break;[Lorg/objectweb/asm/break;[ILjava/lang/String;Z)Landroid/support/v4/d2;
    .locals 11

    move-object v0, p0

    iget v1, v0, Landroid/support/v4/xz0;->do:I

    const/high16 v2, 0x50000

    if-lt v1, v2, :cond_1

    iget-object v3, v0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v3, :cond_0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Landroid/support/v4/xz0;->import(ILandroid/support/v4/p92;[Lorg/objectweb/asm/break;[Lorg/objectweb/asm/break;[ILjava/lang/String;Z)Landroid/support/v4/d2;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method

.method public native(Lorg/objectweb/asm/break;[I[Lorg/objectweb/asm/break;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/xz0;->native(Lorg/objectweb/asm/break;[I[Lorg/objectweb/asm/break;)V

    :cond_0
    return-void
.end method

.method public new()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/xz0;->new()V

    :cond_0
    return-void
.end method

.method public package(Lorg/objectweb/asm/break;Lorg/objectweb/asm/break;Lorg/objectweb/asm/break;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/xz0;->package(Lorg/objectweb/asm/break;Lorg/objectweb/asm/break;Lorg/objectweb/asm/break;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public private(ILandroid/support/v4/p92;Ljava/lang/String;Z)Landroid/support/v4/d2;
    .locals 2

    iget v0, p0, Landroid/support/v4/xz0;->do:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/xz0;->private(ILandroid/support/v4/p92;Ljava/lang/String;Z)Landroid/support/v4/d2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public public(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/xz0;->public(II)V

    :cond_0
    return-void
.end method

.method public return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget v0, p0, Landroid/support/v4/xz0;->do:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/xz0;->static(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    iget v0, p0, Landroid/support/v4/xz0;->do:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_2

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p5, v0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "INVOKESPECIAL/STATIC on interfaces require ASM 5"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_3

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/xz0;->static(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public super(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/xz0;->super(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public switch(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/xz0;->switch(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public this(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/xz0;->this(I)V

    :cond_0
    return-void
.end method

.method public throw(ILorg/objectweb/asm/break;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/xz0;->throw(ILorg/objectweb/asm/break;)V

    :cond_0
    return-void
.end method

.method public throws(Ljava/lang/String;I)V
    .locals 2

    iget v0, p0, Landroid/support/v4/xz0;->do:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/xz0;->throws(Ljava/lang/String;I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public try()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/xz0;->try()V

    :cond_0
    return-void
.end method

.method public while(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/break;Lorg/objectweb/asm/break;I)V
    .locals 7

    iget-object v0, p0, Landroid/support/v4/xz0;->if:Landroid/support/v4/xz0;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/xz0;->while(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/break;Lorg/objectweb/asm/break;I)V

    :cond_0
    return-void
.end method
