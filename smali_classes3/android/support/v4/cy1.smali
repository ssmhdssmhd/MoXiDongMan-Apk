.class public Landroid/support/v4/cy1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/cy1;->do:Ljava/lang/String;

    return-void
.end method

.method private static do(Ljava/lang/String;ILandroid/support/v4/hy1;)I
    .locals 8

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x46

    if-eq p1, v1, :cond_b

    const/16 v1, 0x56

    if-eq p1, v1, :cond_b

    const/16 v1, 0x49

    if-eq p1, v1, :cond_b

    const/16 v1, 0x4a

    if-eq p1, v1, :cond_b

    const/16 v1, 0x53

    if-eq p1, v1, :cond_b

    const/16 v1, 0x54

    const/16 v2, 0x3b

    const/4 v3, 0x1

    if-eq p1, v1, :cond_a

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_b

    const/16 v1, 0x5b

    if-eq p1, v1, :cond_9

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    move p1, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x2e

    if-eq v0, v7, :cond_5

    if-eq v0, v2, :cond_5

    const/16 v7, 0x3c

    if-eq v0, v7, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_1

    invoke-virtual {p2, v0}, Landroid/support/v4/hy1;->goto(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/support/v4/hy1;->new(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2a

    if-eq v0, v4, :cond_4

    const/16 v4, 0x2b

    if-eq v0, v4, :cond_3

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_3

    const/16 v4, 0x3e

    if-eq v0, v4, :cond_2

    const/16 v0, 0x3d

    goto :goto_2

    :cond_2
    move v0, v6

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    :goto_2
    invoke-virtual {p2, v0}, Landroid/support/v4/hy1;->final(C)Landroid/support/v4/hy1;

    move-result-object v0

    invoke-static {p0, v6, v0}, Landroid/support/v4/cy1;->do(Ljava/lang/String;ILandroid/support/v4/hy1;)I

    move-result v6

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p2}, Landroid/support/v4/hy1;->super()V

    goto :goto_1

    :cond_5
    if-nez v4, :cond_7

    add-int/lit8 v4, v6, -0x1

    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    if-eqz v5, :cond_6

    invoke-virtual {p2, p1}, Landroid/support/v4/hy1;->goto(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p2, p1}, Landroid/support/v4/hy1;->new(Ljava/lang/String;)V

    :cond_7
    :goto_3
    if-ne v0, v2, :cond_8

    invoke-virtual {p2}, Landroid/support/v4/hy1;->try()V

    return v6

    :cond_8
    move p1, v6

    move v0, p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_0

    :cond_9
    invoke-virtual {p2}, Landroid/support/v4/hy1;->do()Landroid/support/v4/hy1;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/support/v4/cy1;->do(Ljava/lang/String;ILandroid/support/v4/hy1;)I

    move-result p0

    return p0

    :cond_a
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/support/v4/hy1;->throw(Ljava/lang/String;)V

    add-int/2addr p1, v3

    return p1

    :cond_b
    :pswitch_0
    invoke-virtual {p2, p1}, Landroid/support/v4/hy1;->if(C)V

    return v0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public for(Landroid/support/v4/hy1;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/cy1;->do:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/support/v4/cy1;->do(Ljava/lang/String;ILandroid/support/v4/hy1;)I

    return-void
.end method

.method public if(Landroid/support/v4/hy1;)V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/cy1;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_4

    const/4 v2, 0x2

    :cond_0
    const/16 v3, 0x3a

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v4/hy1;->else(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x4c

    if-eq v2, v5, :cond_1

    const/16 v5, 0x5b

    if-eq v2, v5, :cond_1

    const/16 v5, 0x54

    if-ne v2, v5, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/hy1;->for()Landroid/support/v4/hy1;

    move-result-object v2

    invoke-static {v0, v4, v2}, Landroid/support/v4/cy1;->do(Ljava/lang/String;ILandroid/support/v4/hy1;)I

    move-result v4

    :cond_2
    :goto_0
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_3

    invoke-virtual {p1}, Landroid/support/v4/hy1;->break()Landroid/support/v4/hy1;

    move-result-object v4

    invoke-static {v0, v2, v4}, Landroid/support/v4/cy1;->do(Ljava/lang/String;ILandroid/support/v4/hy1;)I

    move-result v4

    goto :goto_0

    :cond_3
    const/16 v3, 0x3e

    if-ne v4, v3, :cond_0

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_5

    invoke-virtual {p1}, Landroid/support/v4/hy1;->catch()Landroid/support/v4/hy1;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/support/v4/cy1;->do(Ljava/lang/String;ILandroid/support/v4/hy1;)I

    move-result v2

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Landroid/support/v4/hy1;->class()Landroid/support/v4/hy1;

    move-result-object v3

    :goto_2
    invoke-static {v0, v2, v3}, Landroid/support/v4/cy1;->do(Ljava/lang/String;ILandroid/support/v4/hy1;)I

    move-result v2

    if-ge v2, v1, :cond_7

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Landroid/support/v4/hy1;->case()Landroid/support/v4/hy1;

    move-result-object v3

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/support/v4/hy1;->const()Landroid/support/v4/hy1;

    move-result-object v3

    :goto_3
    invoke-static {v0, v2, v3}, Landroid/support/v4/cy1;->do(Ljava/lang/String;ILandroid/support/v4/hy1;)I

    move-result v2

    if-ge v2, v1, :cond_7

    invoke-virtual {p1}, Landroid/support/v4/hy1;->this()Landroid/support/v4/hy1;

    move-result-object v3

    goto :goto_3

    :cond_7
    return-void
.end method
