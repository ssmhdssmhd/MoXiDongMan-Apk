.class final Lorg/objectweb/asm/case;
.super Landroid/support/v4/la0;
.source "SourceFile"


# instance fields
.field private break:Lorg/objectweb/asm/do;

.field private final case:I

.field private catch:Lorg/objectweb/asm/do;

.field private class:Lorg/objectweb/asm/do;

.field private const:Landroid/support/v4/o4;

.field private else:I

.field private final for:Lorg/objectweb/asm/for;

.field private goto:I

.field private final new:I

.field private this:Lorg/objectweb/asm/do;

.field private final try:I


# direct methods
.method public constructor <init>(Lorg/objectweb/asm/for;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Landroid/support/v4/la0;-><init>(I)V

    iget-object v0, p1, Lorg/objectweb/asm/for;->protected:Lorg/objectweb/asm/case;

    if-nez v0, :cond_0

    iput-object p0, p1, Lorg/objectweb/asm/for;->protected:Lorg/objectweb/asm/case;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/objectweb/asm/for;->transient:Lorg/objectweb/asm/case;

    iput-object p0, v0, Landroid/support/v4/la0;->if:Landroid/support/v4/la0;

    :goto_0
    iput-object p0, p1, Lorg/objectweb/asm/for;->transient:Lorg/objectweb/asm/case;

    iput-object p1, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    iput p2, p0, Lorg/objectweb/asm/case;->new:I

    invoke-virtual {p1, p3}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/objectweb/asm/case;->try:I

    invoke-virtual {p1, p4}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/objectweb/asm/case;->case:I

    if-eqz p5, :cond_1

    invoke-virtual {p1, p5}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/objectweb/asm/case;->else:I

    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual {p1, p6}, Lorg/objectweb/asm/for;->native(Ljava/lang/Object;)Lorg/objectweb/asm/this;

    move-result-object p1

    iget p1, p1, Lorg/objectweb/asm/this;->do:I

    iput p1, p0, Lorg/objectweb/asm/case;->goto:I

    :cond_2
    return-void
.end method


# virtual methods
.method public case(Landroid/support/v4/ee;)V
    .locals 9

    iget v0, p0, Lorg/objectweb/asm/case;->new:I

    const/high16 v1, 0x40000

    and-int v2, v0, v1

    div-int/lit8 v2, v2, 0x40

    const/high16 v3, 0x60000

    or-int/2addr v2, v3

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/support/v4/ee;->this(I)Landroid/support/v4/ee;

    move-result-object v0

    iget v2, p0, Lorg/objectweb/asm/case;->try:I

    invoke-virtual {v0, v2}, Landroid/support/v4/ee;->this(I)Landroid/support/v4/ee;

    move-result-object v0

    iget v2, p0, Lorg/objectweb/asm/case;->case:I

    invoke-virtual {v0, v2}, Landroid/support/v4/ee;->this(I)Landroid/support/v4/ee;

    iget v0, p0, Lorg/objectweb/asm/case;->goto:I

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lorg/objectweb/asm/case;->new:I

    and-int/lit16 v4, v3, 0x1000

    const/16 v5, 0x31

    const v6, 0xffff

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    iget v4, v4, Lorg/objectweb/asm/for;->new:I

    and-int/2addr v4, v6

    if-lt v4, v5, :cond_1

    and-int v4, v3, v1

    if-eqz v4, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget v3, p0, Lorg/objectweb/asm/case;->else:I

    if-eqz v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget-object v3, p0, Lorg/objectweb/asm/case;->this:Lorg/objectweb/asm/do;

    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    iget-object v3, p0, Lorg/objectweb/asm/case;->break:Lorg/objectweb/asm/do;

    if-eqz v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    iget-object v3, p0, Lorg/objectweb/asm/case;->catch:Lorg/objectweb/asm/do;

    if-eqz v3, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_7
    iget-object v3, p0, Lorg/objectweb/asm/case;->class:Lorg/objectweb/asm/do;

    if-eqz v3, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    iget-object v3, p0, Lorg/objectweb/asm/case;->const:Landroid/support/v4/o4;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/support/v4/o4;->do()I

    move-result v3

    add-int/2addr v0, v3

    :cond_9
    invoke-virtual {p1, v0}, Landroid/support/v4/ee;->this(I)Landroid/support/v4/ee;

    iget v0, p0, Lorg/objectweb/asm/case;->goto:I

    const/4 v3, 0x2

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    const-string v7, "ConstantValue"

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/ee;->this(I)Landroid/support/v4/ee;

    invoke-virtual {p1, v3}, Landroid/support/v4/ee;->else(I)Landroid/support/v4/ee;

    move-result-object v0

    iget v7, p0, Lorg/objectweb/asm/case;->goto:I

    invoke-virtual {v0, v7}, Landroid/support/v4/ee;->this(I)Landroid/support/v4/ee;

    :cond_a
    iget v0, p0, Lorg/objectweb/asm/case;->new:I

    and-int/lit16 v7, v0, 0x1000

    if-eqz v7, :cond_c

    iget-object v7, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    iget v8, v7, Lorg/objectweb/asm/for;->new:I

    and-int/2addr v6, v8

    if-lt v6, v5, :cond_b

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    :cond_b
    const-string v0, "Synthetic"

    invoke-virtual {v7, v0}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/ee;->this(I)Landroid/support/v4/ee;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/ee;->else(I)Landroid/support/v4/ee;

    :cond_c
    iget v0, p0, Lorg/objectweb/asm/case;->new:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/ee;->this(I)Landroid/support/v4/ee;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/ee;->else(I)Landroid/support/v4/ee;

    :cond_d
    iget v0, p0, Lorg/objectweb/asm/case;->else:I

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/ee;->this(I)Landroid/support/v4/ee;

    invoke-virtual {p1, v3}, Landroid/support/v4/ee;->else(I)Landroid/support/v4/ee;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/case;->else:I

    invoke-virtual {v0, v1}, Landroid/support/v4/ee;->this(I)Landroid/support/v4/ee;

    :cond_e
    iget-object v0, p0, Lorg/objectweb/asm/case;->this:Lorg/objectweb/asm/do;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/ee;->this(I)Landroid/support/v4/ee;

    iget-object v0, p0, Lorg/objectweb/asm/case;->this:Lorg/objectweb/asm/do;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/do;->goto(Landroid/support/v4/ee;)V

    :cond_f
    iget-object v0, p0, Lorg/objectweb/asm/case;->break:Lorg/objectweb/asm/do;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/ee;->this(I)Landroid/support/v4/ee;

    iget-object v0, p0, Lorg/objectweb/asm/case;->break:Lorg/objectweb/asm/do;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/do;->goto(Landroid/support/v4/ee;)V

    :cond_10
    iget-object v0, p0, Lorg/objectweb/asm/case;->catch:Lorg/objectweb/asm/do;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    const-string v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/ee;->this(I)Landroid/support/v4/ee;

    iget-object v0, p0, Lorg/objectweb/asm/case;->catch:Lorg/objectweb/asm/do;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/do;->goto(Landroid/support/v4/ee;)V

    :cond_11
    iget-object v0, p0, Lorg/objectweb/asm/case;->class:Lorg/objectweb/asm/do;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    const-string v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/ee;->this(I)Landroid/support/v4/ee;

    iget-object v0, p0, Lorg/objectweb/asm/case;->class:Lorg/objectweb/asm/do;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/do;->goto(Landroid/support/v4/ee;)V

    :cond_12
    iget-object v1, p0, Lorg/objectweb/asm/case;->const:Landroid/support/v4/o4;

    if-eqz v1, :cond_13

    iget-object v2, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Landroid/support/v4/o4;->for(Lorg/objectweb/asm/for;[BIIILandroid/support/v4/ee;)V

    :cond_13
    return-void
.end method

.method public do(Ljava/lang/String;Z)Landroid/support/v4/d2;
    .locals 6

    new-instance v4, Landroid/support/v4/ee;

    invoke-direct {v4}, Landroid/support/v4/ee;-><init>()V

    iget-object v0, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/support/v4/ee;->this(I)Landroid/support/v4/ee;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/ee;->this(I)Landroid/support/v4/ee;

    new-instance p1, Lorg/objectweb/asm/do;

    iget-object v1, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/do;-><init>(Lorg/objectweb/asm/for;ZLandroid/support/v4/ee;Landroid/support/v4/ee;I)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/objectweb/asm/case;->this:Lorg/objectweb/asm/do;

    iput-object p2, p1, Lorg/objectweb/asm/do;->this:Lorg/objectweb/asm/do;

    iput-object p1, p0, Lorg/objectweb/asm/case;->this:Lorg/objectweb/asm/do;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/objectweb/asm/case;->break:Lorg/objectweb/asm/do;

    iput-object p2, p1, Lorg/objectweb/asm/do;->this:Lorg/objectweb/asm/do;

    iput-object p1, p0, Lorg/objectweb/asm/case;->break:Lorg/objectweb/asm/do;

    :goto_0
    return-object p1
.end method

.method public for()V
    .locals 0

    return-void
.end method

.method public if(Landroid/support/v4/o4;)V
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/case;->const:Landroid/support/v4/o4;

    iput-object v0, p1, Landroid/support/v4/o4;->for:Landroid/support/v4/o4;

    iput-object p1, p0, Lorg/objectweb/asm/case;->const:Landroid/support/v4/o4;

    return-void
.end method

.method public new(ILandroid/support/v4/p92;Ljava/lang/String;Z)Landroid/support/v4/d2;
    .locals 6

    new-instance v4, Landroid/support/v4/ee;

    invoke-direct {v4}, Landroid/support/v4/ee;-><init>()V

    invoke-static {p1, p2, v4}, Lorg/objectweb/asm/do;->else(ILandroid/support/v4/p92;Landroid/support/v4/ee;)V

    iget-object p1, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    invoke-virtual {p1, p3}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/support/v4/ee;->this(I)Landroid/support/v4/ee;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v4/ee;->this(I)Landroid/support/v4/ee;

    new-instance p1, Lorg/objectweb/asm/do;

    iget-object v1, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    iget p2, v4, Landroid/support/v4/ee;->if:I

    add-int/lit8 v5, p2, -0x2

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/do;-><init>(Lorg/objectweb/asm/for;ZLandroid/support/v4/ee;Landroid/support/v4/ee;I)V

    if-eqz p4, :cond_0

    iget-object p2, p0, Lorg/objectweb/asm/case;->catch:Lorg/objectweb/asm/do;

    iput-object p2, p1, Lorg/objectweb/asm/do;->this:Lorg/objectweb/asm/do;

    iput-object p1, p0, Lorg/objectweb/asm/case;->catch:Lorg/objectweb/asm/do;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/objectweb/asm/case;->class:Lorg/objectweb/asm/do;

    iput-object p2, p1, Lorg/objectweb/asm/do;->this:Lorg/objectweb/asm/do;

    iput-object p1, p0, Lorg/objectweb/asm/case;->class:Lorg/objectweb/asm/do;

    :goto_0
    return-object p1
.end method

.method public try()I
    .locals 7

    iget v0, p0, Lorg/objectweb/asm/case;->goto:I

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    const-string v2, "ConstantValue"

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    iget v2, p0, Lorg/objectweb/asm/case;->new:I

    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    iget v4, v3, Lorg/objectweb/asm/for;->new:I

    const v5, 0xffff

    and-int/2addr v4, v5

    const/16 v5, 0x31

    if-lt v4, v5, :cond_1

    const/high16 v4, 0x40000

    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "Synthetic"

    invoke-virtual {v3, v2}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_2
    iget v2, p0, Lorg/objectweb/asm/case;->new:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    const-string v3, "Deprecated"

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_3
    iget v2, p0, Lorg/objectweb/asm/case;->else:I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    const-string v3, "Signature"

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x8

    :cond_4
    iget-object v2, p0, Lorg/objectweb/asm/case;->this:Lorg/objectweb/asm/do;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    const-string v3, "RuntimeVisibleAnnotations"

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    iget-object v2, p0, Lorg/objectweb/asm/case;->this:Lorg/objectweb/asm/do;

    invoke-virtual {v2}, Lorg/objectweb/asm/do;->case()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_5
    iget-object v2, p0, Lorg/objectweb/asm/case;->break:Lorg/objectweb/asm/do;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    const-string v3, "RuntimeInvisibleAnnotations"

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    iget-object v2, p0, Lorg/objectweb/asm/case;->break:Lorg/objectweb/asm/do;

    invoke-virtual {v2}, Lorg/objectweb/asm/do;->case()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_6
    iget-object v2, p0, Lorg/objectweb/asm/case;->catch:Lorg/objectweb/asm/do;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    const-string v3, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    iget-object v2, p0, Lorg/objectweb/asm/case;->catch:Lorg/objectweb/asm/do;

    invoke-virtual {v2}, Lorg/objectweb/asm/do;->case()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_7
    iget-object v2, p0, Lorg/objectweb/asm/case;->class:Lorg/objectweb/asm/do;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    const-string v3, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/for;->c(Ljava/lang/String;)I

    iget-object v2, p0, Lorg/objectweb/asm/case;->class:Lorg/objectweb/asm/do;

    invoke-virtual {v2}, Lorg/objectweb/asm/do;->case()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_8
    iget-object v1, p0, Lorg/objectweb/asm/case;->const:Landroid/support/v4/o4;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lorg/objectweb/asm/case;->for:Lorg/objectweb/asm/for;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/o4;->if(Lorg/objectweb/asm/for;[BIII)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    return v0
.end method
