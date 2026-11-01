.class public abstract Landroid/support/v4/pm2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final catch:I = 0x0

.field public static final class:I = 0x1

.field public static final const:I = 0x2

.field public static final final:I = 0x3

.field public static final import:I = 0x10

.field public static final super:I = 0x4

.field public static final throw:I = 0x5

.field public static final while:I = 0x6


# instance fields
.field public break:Z

.field public case:I

.field public do:[Landroid/support/v4/um2;

.field public else:I

.field public for:Landroid/support/v4/gm2;

.field public goto:Z

.field public if:[Landroid/support/v4/hm2;

.field public new:[B

.field public this:Z

.field public try:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/gm2;

    invoke-direct {v0}, Landroid/support/v4/gm2;-><init>()V

    iput-object v0, p0, Landroid/support/v4/pm2;->for:Landroid/support/v4/gm2;

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/pm2;->new:[B

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/pm2;->try:[I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/pm2;->goto(I)V

    invoke-virtual {p0}, Landroid/support/v4/pm2;->new()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/gm2;

    invoke-direct {v0}, Landroid/support/v4/gm2;-><init>()V

    iput-object v0, p0, Landroid/support/v4/pm2;->for:Landroid/support/v4/gm2;

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/pm2;->new:[B

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/pm2;->try:[I

    invoke-virtual {p0, p1}, Landroid/support/v4/pm2;->goto(I)V

    invoke-virtual {p0}, Landroid/support/v4/pm2;->new()V

    return-void
.end method

.method public constructor <init>(I[Landroid/support/v4/um2;[Landroid/support/v4/hm2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/gm2;

    invoke-direct {v0}, Landroid/support/v4/gm2;-><init>()V

    iput-object v0, p0, Landroid/support/v4/pm2;->for:Landroid/support/v4/gm2;

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/support/v4/pm2;->new:[B

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/pm2;->try:[I

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/pm2;->break:Z

    iput-object p3, p0, Landroid/support/v4/pm2;->if:[Landroid/support/v4/hm2;

    iput-object p2, p0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    iput p1, p0, Landroid/support/v4/pm2;->else:I

    invoke-virtual {p0}, Landroid/support/v4/pm2;->new()V

    return-void
.end method


# virtual methods
.method public case([BIZ)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Landroid/support/v4/pm2;->case:I

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Landroid/support/v4/pm2;->if:[Landroid/support/v4/hm2;

    iget-object v5, p0, Landroid/support/v4/pm2;->try:[I

    aget v6, v5, v1

    aget-object v4, v4, v6

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    iget-object v4, p0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    aget v5, v5, v1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/support/v4/um2;->new()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    iget-object v5, p0, Landroid/support/v4/pm2;->try:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/support/v4/um2;->if()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GB18030"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-le v2, v1, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Landroid/support/v4/pm2;->this:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/support/v4/pm2;->for:Landroid/support/v4/gm2;

    invoke-virtual {v4, p1, p2}, Landroid/support/v4/gm2;->else([BI)Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v4/pm2;->this:Z

    if-eqz p3, :cond_4

    iget-object p1, p0, Landroid/support/v4/pm2;->for:Landroid/support/v4/gm2;

    invoke-virtual {p1}, Landroid/support/v4/gm2;->try()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    iget-object p1, p0, Landroid/support/v4/pm2;->for:Landroid/support/v4/gm2;

    invoke-virtual {p1}, Landroid/support/v4/gm2;->if()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_5
    if-ne v2, v3, :cond_a

    iget-object p1, p0, Landroid/support/v4/pm2;->for:Landroid/support/v4/gm2;

    invoke-virtual {p1}, Landroid/support/v4/gm2;->do()V

    const/4 p1, -0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_2
    iget v2, p0, Landroid/support/v4/pm2;->case:I

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Landroid/support/v4/pm2;->if:[Landroid/support/v4/hm2;

    iget-object v3, p0, Landroid/support/v4/pm2;->try:[I

    aget v4, v3, v0

    aget-object v2, v2, v4

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    aget v3, v3, v0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/support/v4/um2;->if()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Big5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Landroid/support/v4/pm2;->for:Landroid/support/v4/gm2;

    iget-object v3, p0, Landroid/support/v4/pm2;->if:[Landroid/support/v4/hm2;

    iget-object v4, p0, Landroid/support/v4/pm2;->try:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/support/v4/hm2;->do()[F

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/pm2;->if:[Landroid/support/v4/hm2;

    iget-object v5, p0, Landroid/support/v4/pm2;->try:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/support/v4/hm2;->new()F

    move-result v4

    iget-object v5, p0, Landroid/support/v4/pm2;->if:[Landroid/support/v4/hm2;

    iget-object v6, p0, Landroid/support/v4/pm2;->try:[I

    aget v6, v6, v0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/support/v4/hm2;->try()[F

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/pm2;->if:[Landroid/support/v4/hm2;

    iget-object v7, p0, Landroid/support/v4/pm2;->try:[I

    aget v7, v7, v0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/support/v4/hm2;->goto()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v4/gm2;->for([FF[FF)F

    move-result v2

    add-int/lit8 v3, p3, 0x1

    if-eqz p3, :cond_6

    cmpl-float p3, p2, v2

    if-lez p3, :cond_7

    :cond_6
    move p1, v0

    move p2, v2

    :cond_7
    move p3, v3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    if-ltz p1, :cond_a

    iget-object p2, p0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    iget-object p3, p0, Landroid/support/v4/pm2;->try:[I

    aget p1, p3, p1

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/support/v4/um2;->if()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/pm2;->for(Ljava/lang/String;)V

    iput-boolean v1, p0, Landroid/support/v4/pm2;->goto:Z

    :cond_a
    return-void
.end method

.method public do()V
    .locals 5

    iget-boolean v0, p0, Landroid/support/v4/pm2;->goto:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v4/pm2;->case:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    iget-object v2, p0, Landroid/support/v4/pm2;->try:[I

    aget v2, v2, v3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/support/v4/um2;->if()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GB18030"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    iget-object v2, p0, Landroid/support/v4/pm2;->try:[I

    aget v2, v2, v1

    aget-object v0, v0, v2

    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/um2;->if()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/pm2;->for(Ljava/lang/String;)V

    iput-boolean v1, p0, Landroid/support/v4/pm2;->goto:Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    iget-object v4, p0, Landroid/support/v4/pm2;->try:[I

    aget v4, v4, v1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/support/v4/um2;->if()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    iget-object v2, p0, Landroid/support/v4/pm2;->try:[I

    aget v2, v2, v3

    aget-object v0, v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean v0, p0, Landroid/support/v4/pm2;->this:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3, v1}, Landroid/support/v4/pm2;->case([BIZ)V

    :cond_3
    return-void
.end method

.method public else()[Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroid/support/v4/pm2;->case:I

    if-gtz v0, :cond_0

    const-string v0, "nomatch"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v4/pm2;->case:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    iget-object v3, p0, Landroid/support/v4/pm2;->try:[I

    aget v3, v3, v1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/support/v4/um2;->if()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public abstract for(Ljava/lang/String;)V
.end method

.method public goto(I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    iput-object v4, v0, Landroid/support/v4/pm2;->if:[Landroid/support/v4/hm2;

    const/4 v5, 0x7

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-ne v1, v9, :cond_1

    new-array v1, v5, [Landroid/support/v4/um2;

    new-instance v11, Landroid/support/v4/tm2;

    invoke-direct {v11}, Landroid/support/v4/tm2;-><init>()V

    aput-object v11, v1, v3

    new-instance v11, Landroid/support/v4/bm2;

    invoke-direct {v11}, Landroid/support/v4/bm2;-><init>()V

    aput-object v11, v1, v10

    new-instance v11, Landroid/support/v4/mm2;

    invoke-direct {v11}, Landroid/support/v4/mm2;-><init>()V

    aput-object v11, v1, v7

    new-instance v11, Landroid/support/v4/im2;

    invoke-direct {v11}, Landroid/support/v4/im2;-><init>()V

    aput-object v11, v1, v6

    new-instance v11, Landroid/support/v4/cm2;

    invoke-direct {v11}, Landroid/support/v4/cm2;-><init>()V

    aput-object v11, v1, v9

    new-instance v11, Landroid/support/v4/rm2;

    invoke-direct {v11}, Landroid/support/v4/rm2;-><init>()V

    aput-object v11, v1, v8

    new-instance v11, Landroid/support/v4/sm2;

    invoke-direct {v11}, Landroid/support/v4/sm2;-><init>()V

    aput-object v11, v1, v2

    iput-object v1, v0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    new-array v1, v5, [Landroid/support/v4/hm2;

    aput-object v4, v1, v3

    new-instance v5, Landroid/support/v4/t8;

    invoke-direct {v5}, Landroid/support/v4/t8;-><init>()V

    aput-object v5, v1, v10

    aput-object v4, v1, v7

    new-instance v5, Landroid/support/v4/r50;

    invoke-direct {v5}, Landroid/support/v4/r50;-><init>()V

    aput-object v5, v1, v6

    aput-object v4, v1, v9

    aput-object v4, v1, v8

    aput-object v4, v1, v2

    iput-object v1, v0, Landroid/support/v4/pm2;->if:[Landroid/support/v4/hm2;

    goto/16 :goto_1

    :cond_1
    if-ne v1, v8, :cond_2

    new-array v1, v2, [Landroid/support/v4/um2;

    new-instance v2, Landroid/support/v4/tm2;

    invoke-direct {v2}, Landroid/support/v4/tm2;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Landroid/support/v4/fm2;

    invoke-direct {v2}, Landroid/support/v4/fm2;-><init>()V

    aput-object v2, v1, v10

    new-instance v2, Landroid/support/v4/om2;

    invoke-direct {v2}, Landroid/support/v4/om2;-><init>()V

    aput-object v2, v1, v7

    new-instance v2, Landroid/support/v4/cm2;

    invoke-direct {v2}, Landroid/support/v4/cm2;-><init>()V

    aput-object v2, v1, v6

    new-instance v2, Landroid/support/v4/rm2;

    invoke-direct {v2}, Landroid/support/v4/rm2;-><init>()V

    aput-object v2, v1, v9

    new-instance v2, Landroid/support/v4/sm2;

    invoke-direct {v2}, Landroid/support/v4/sm2;-><init>()V

    aput-object v2, v1, v8

    iput-object v1, v0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    goto/16 :goto_1

    :cond_2
    const/16 v11, 0x8

    if-ne v1, v6, :cond_3

    new-array v1, v11, [Landroid/support/v4/um2;

    new-instance v4, Landroid/support/v4/tm2;

    invoke-direct {v4}, Landroid/support/v4/tm2;-><init>()V

    aput-object v4, v1, v3

    new-instance v4, Landroid/support/v4/km2;

    invoke-direct {v4}, Landroid/support/v4/km2;-><init>()V

    aput-object v4, v1, v10

    new-instance v4, Landroid/support/v4/jm2;

    invoke-direct {v4}, Landroid/support/v4/jm2;-><init>()V

    aput-object v4, v1, v7

    new-instance v4, Landroid/support/v4/mm2;

    invoke-direct {v4}, Landroid/support/v4/mm2;-><init>()V

    aput-object v4, v1, v6

    new-instance v4, Landroid/support/v4/lm2;

    invoke-direct {v4}, Landroid/support/v4/lm2;-><init>()V

    aput-object v4, v1, v9

    new-instance v4, Landroid/support/v4/cm2;

    invoke-direct {v4}, Landroid/support/v4/cm2;-><init>()V

    aput-object v4, v1, v8

    new-instance v4, Landroid/support/v4/rm2;

    invoke-direct {v4}, Landroid/support/v4/rm2;-><init>()V

    aput-object v4, v1, v2

    new-instance v2, Landroid/support/v4/sm2;

    invoke-direct {v2}, Landroid/support/v4/sm2;-><init>()V

    aput-object v2, v1, v5

    iput-object v1, v0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    goto/16 :goto_1

    :cond_3
    if-ne v1, v10, :cond_4

    new-array v1, v5, [Landroid/support/v4/um2;

    new-instance v4, Landroid/support/v4/tm2;

    invoke-direct {v4}, Landroid/support/v4/tm2;-><init>()V

    aput-object v4, v1, v3

    new-instance v4, Landroid/support/v4/qm2;

    invoke-direct {v4}, Landroid/support/v4/qm2;-><init>()V

    aput-object v4, v1, v10

    new-instance v4, Landroid/support/v4/em2;

    invoke-direct {v4}, Landroid/support/v4/em2;-><init>()V

    aput-object v4, v1, v7

    new-instance v4, Landroid/support/v4/nm2;

    invoke-direct {v4}, Landroid/support/v4/nm2;-><init>()V

    aput-object v4, v1, v6

    new-instance v4, Landroid/support/v4/cm2;

    invoke-direct {v4}, Landroid/support/v4/cm2;-><init>()V

    aput-object v4, v1, v9

    new-instance v4, Landroid/support/v4/rm2;

    invoke-direct {v4}, Landroid/support/v4/rm2;-><init>()V

    aput-object v4, v1, v8

    new-instance v4, Landroid/support/v4/sm2;

    invoke-direct {v4}, Landroid/support/v4/sm2;-><init>()V

    aput-object v4, v1, v2

    iput-object v1, v0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    goto/16 :goto_1

    :cond_4
    const/16 v12, 0x9

    const/16 v13, 0xa

    if-ne v1, v7, :cond_5

    new-array v1, v13, [Landroid/support/v4/um2;

    new-instance v14, Landroid/support/v4/tm2;

    invoke-direct {v14}, Landroid/support/v4/tm2;-><init>()V

    aput-object v14, v1, v3

    new-instance v14, Landroid/support/v4/km2;

    invoke-direct {v14}, Landroid/support/v4/km2;-><init>()V

    aput-object v14, v1, v10

    new-instance v14, Landroid/support/v4/jm2;

    invoke-direct {v14}, Landroid/support/v4/jm2;-><init>()V

    aput-object v14, v1, v7

    new-instance v14, Landroid/support/v4/bm2;

    invoke-direct {v14}, Landroid/support/v4/bm2;-><init>()V

    aput-object v14, v1, v6

    new-instance v14, Landroid/support/v4/mm2;

    invoke-direct {v14}, Landroid/support/v4/mm2;-><init>()V

    aput-object v14, v1, v9

    new-instance v14, Landroid/support/v4/lm2;

    invoke-direct {v14}, Landroid/support/v4/lm2;-><init>()V

    aput-object v14, v1, v8

    new-instance v14, Landroid/support/v4/im2;

    invoke-direct {v14}, Landroid/support/v4/im2;-><init>()V

    aput-object v14, v1, v2

    new-instance v14, Landroid/support/v4/cm2;

    invoke-direct {v14}, Landroid/support/v4/cm2;-><init>()V

    aput-object v14, v1, v5

    new-instance v14, Landroid/support/v4/rm2;

    invoke-direct {v14}, Landroid/support/v4/rm2;-><init>()V

    aput-object v14, v1, v11

    new-instance v14, Landroid/support/v4/sm2;

    invoke-direct {v14}, Landroid/support/v4/sm2;-><init>()V

    aput-object v14, v1, v12

    iput-object v1, v0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    new-array v1, v13, [Landroid/support/v4/hm2;

    aput-object v4, v1, v3

    new-instance v13, Landroid/support/v4/le0;

    invoke-direct {v13}, Landroid/support/v4/le0;-><init>()V

    aput-object v13, v1, v10

    aput-object v4, v1, v7

    new-instance v7, Landroid/support/v4/t8;

    invoke-direct {v7}, Landroid/support/v4/t8;-><init>()V

    aput-object v7, v1, v6

    aput-object v4, v1, v9

    aput-object v4, v1, v8

    new-instance v6, Landroid/support/v4/r50;

    invoke-direct {v6}, Landroid/support/v4/r50;-><init>()V

    aput-object v6, v1, v2

    aput-object v4, v1, v5

    aput-object v4, v1, v11

    aput-object v4, v1, v12

    iput-object v1, v0, Landroid/support/v4/pm2;->if:[Landroid/support/v4/hm2;

    goto/16 :goto_1

    :cond_5
    if-nez v1, :cond_6

    const/16 v1, 0xf

    new-array v14, v1, [Landroid/support/v4/um2;

    new-instance v15, Landroid/support/v4/tm2;

    invoke-direct {v15}, Landroid/support/v4/tm2;-><init>()V

    aput-object v15, v14, v3

    new-instance v15, Landroid/support/v4/qm2;

    invoke-direct {v15}, Landroid/support/v4/qm2;-><init>()V

    aput-object v15, v14, v10

    new-instance v15, Landroid/support/v4/em2;

    invoke-direct {v15}, Landroid/support/v4/em2;-><init>()V

    aput-object v15, v14, v7

    new-instance v15, Landroid/support/v4/nm2;

    invoke-direct {v15}, Landroid/support/v4/nm2;-><init>()V

    aput-object v15, v14, v6

    new-instance v15, Landroid/support/v4/fm2;

    invoke-direct {v15}, Landroid/support/v4/fm2;-><init>()V

    aput-object v15, v14, v9

    new-instance v15, Landroid/support/v4/om2;

    invoke-direct {v15}, Landroid/support/v4/om2;-><init>()V

    aput-object v15, v14, v8

    new-instance v15, Landroid/support/v4/bm2;

    invoke-direct {v15}, Landroid/support/v4/bm2;-><init>()V

    aput-object v15, v14, v2

    new-instance v15, Landroid/support/v4/im2;

    invoke-direct {v15}, Landroid/support/v4/im2;-><init>()V

    aput-object v15, v14, v5

    new-instance v15, Landroid/support/v4/km2;

    invoke-direct {v15}, Landroid/support/v4/km2;-><init>()V

    aput-object v15, v14, v11

    new-instance v15, Landroid/support/v4/jm2;

    invoke-direct {v15}, Landroid/support/v4/jm2;-><init>()V

    aput-object v15, v14, v12

    new-instance v15, Landroid/support/v4/mm2;

    invoke-direct {v15}, Landroid/support/v4/mm2;-><init>()V

    aput-object v15, v14, v13

    new-instance v15, Landroid/support/v4/lm2;

    invoke-direct {v15}, Landroid/support/v4/lm2;-><init>()V

    const/16 v16, 0xb

    aput-object v15, v14, v16

    new-instance v15, Landroid/support/v4/cm2;

    invoke-direct {v15}, Landroid/support/v4/cm2;-><init>()V

    const/16 v17, 0xc

    aput-object v15, v14, v17

    new-instance v15, Landroid/support/v4/rm2;

    invoke-direct {v15}, Landroid/support/v4/rm2;-><init>()V

    const/16 v18, 0xd

    aput-object v15, v14, v18

    new-instance v15, Landroid/support/v4/sm2;

    invoke-direct {v15}, Landroid/support/v4/sm2;-><init>()V

    const/16 v19, 0xe

    aput-object v15, v14, v19

    iput-object v14, v0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    new-array v1, v1, [Landroid/support/v4/hm2;

    aput-object v4, v1, v3

    aput-object v4, v1, v10

    new-instance v14, Landroid/support/v4/p50;

    invoke-direct {v14}, Landroid/support/v4/p50;-><init>()V

    aput-object v14, v1, v7

    aput-object v4, v1, v6

    new-instance v6, Landroid/support/v4/q50;

    invoke-direct {v6}, Landroid/support/v4/q50;-><init>()V

    aput-object v6, v1, v9

    aput-object v4, v1, v8

    new-instance v6, Landroid/support/v4/t8;

    invoke-direct {v6}, Landroid/support/v4/t8;-><init>()V

    aput-object v6, v1, v2

    new-instance v2, Landroid/support/v4/r50;

    invoke-direct {v2}, Landroid/support/v4/r50;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Landroid/support/v4/le0;

    invoke-direct {v2}, Landroid/support/v4/le0;-><init>()V

    aput-object v2, v1, v11

    aput-object v4, v1, v12

    aput-object v4, v1, v13

    aput-object v4, v1, v16

    aput-object v4, v1, v17

    aput-object v4, v1, v18

    aput-object v4, v1, v19

    iput-object v1, v0, Landroid/support/v4/pm2;->if:[Landroid/support/v4/hm2;

    :cond_6
    :goto_1
    iget-object v1, v0, Landroid/support/v4/pm2;->if:[Landroid/support/v4/hm2;

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    :cond_7
    iput-boolean v3, v0, Landroid/support/v4/pm2;->break:Z

    iget-object v1, v0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    array-length v1, v1

    iput v1, v0, Landroid/support/v4/pm2;->else:I

    return-void
.end method

.method public if([BI)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_9

    aget-byte v2, p1, v1

    const/4 v3, 0x0

    :cond_0
    :goto_1
    iget v4, p0, Landroid/support/v4/pm2;->case:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    iget-object v6, p0, Landroid/support/v4/pm2;->try:[I

    aget v6, v6, v3

    aget-object v4, v4, v6

    iget-object v6, p0, Landroid/support/v4/pm2;->new:[B

    aget-byte v6, v6, v3

    invoke-static {v4, v2, v6}, Landroid/support/v4/um2;->for(Landroid/support/v4/um2;BB)B

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    iget-object p1, p0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    iget-object p2, p0, Landroid/support/v4/pm2;->try:[I

    aget p2, p2, v3

    aget-object p1, p1, p2

    :goto_2
    invoke-virtual {p1}, Landroid/support/v4/um2;->if()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/pm2;->for(Ljava/lang/String;)V

    iput-boolean v5, p0, Landroid/support/v4/pm2;->goto:Z

    return v5

    :cond_1
    if-ne v4, v5, :cond_2

    iget v4, p0, Landroid/support/v4/pm2;->case:I

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/support/v4/pm2;->case:I

    if-ge v3, v4, :cond_0

    iget-object v5, p0, Landroid/support/v4/pm2;->try:[I

    aget v6, v5, v4

    aput v6, v5, v3

    iget-object v5, p0, Landroid/support/v4/pm2;->new:[B

    aget-byte v4, v5, v4

    aput-byte v4, v5, v3

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroid/support/v4/pm2;->new:[B

    add-int/lit8 v6, v3, 0x1

    aput-byte v4, v5, v3

    move v3, v6

    goto :goto_1

    :cond_3
    if-gt v4, v5, :cond_5

    if-ne v5, v4, :cond_4

    iget-object p1, p0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    iget-object p2, p0, Landroid/support/v4/pm2;->try:[I

    aget p2, p2, v0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/support/v4/um2;->if()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/pm2;->for(Ljava/lang/String;)V

    :cond_4
    iput-boolean v5, p0, Landroid/support/v4/pm2;->goto:Z

    return v5

    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    iget v6, p0, Landroid/support/v4/pm2;->case:I

    if-ge v2, v6, :cond_7

    iget-object v6, p0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    iget-object v7, p0, Landroid/support/v4/pm2;->try:[I

    aget v7, v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/support/v4/um2;->new()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    iget-object v7, p0, Landroid/support/v4/pm2;->try:[I

    aget v7, v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/support/v4/um2;->new()Z

    move-result v6

    if-nez v6, :cond_6

    add-int/lit8 v3, v3, 0x1

    move v4, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    if-ne v5, v3, :cond_8

    iget-object p1, p0, Landroid/support/v4/pm2;->do:[Landroid/support/v4/um2;

    iget-object p2, p0, Landroid/support/v4/pm2;->try:[I

    aget p2, p2, v4

    aget-object p1, p1, p2

    goto :goto_2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    iget-boolean v0, p0, Landroid/support/v4/pm2;->this:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/pm2;->try([BI)V

    :cond_a
    iget-boolean p1, p0, Landroid/support/v4/pm2;->goto:Z

    return p1
.end method

.method public new()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/pm2;->break:Z

    iput-boolean v0, p0, Landroid/support/v4/pm2;->this:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/pm2;->goto:Z

    iget v1, p0, Landroid/support/v4/pm2;->else:I

    iput v1, p0, Landroid/support/v4/pm2;->case:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v4/pm2;->case:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/pm2;->new:[B

    aput-byte v0, v2, v1

    iget-object v2, p0, Landroid/support/v4/pm2;->try:[I

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/pm2;->for:Landroid/support/v4/gm2;

    invoke-virtual {v0}, Landroid/support/v4/gm2;->case()V

    return-void
.end method

.method public try([BI)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/pm2;->case([BIZ)V

    return-void
.end method
