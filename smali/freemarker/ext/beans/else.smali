.class public abstract Lfreemarker/ext/beans/else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private case:Lfreemarker/template/ObjectWrapper;

.field private final do:Landroid/support/v4/we2;

.field private else:Z

.field private for:Z

.field private goto:Z

.field private if:Lfreemarker/ext/beans/const;

.field private new:Z

.field private try:I


# direct methods
.method public constructor <init>(Landroid/support/v4/we2;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lfreemarker/ext/beans/else;-><init>(Landroid/support/v4/we2;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/we2;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lfreemarker/ext/beans/else;->for:Z

    .line 3
    iput v0, p0, Lfreemarker/ext/beans/else;->try:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lfreemarker/ext/beans/else;->case:Lfreemarker/template/ObjectWrapper;

    .line 5
    iput-boolean v0, p0, Lfreemarker/ext/beans/else;->else:Z

    .line 6
    iput-boolean v0, p0, Lfreemarker/ext/beans/else;->goto:Z

    .line 7
    invoke-static {p1}, Landroid/support/v4/ul2;->if(Landroid/support/v4/we2;)V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lfreemarker/ext/beans/try;->c(Landroid/support/v4/we2;)Landroid/support/v4/we2;

    move-result-object p1

    .line 9
    :goto_0
    iput-object p1, p0, Lfreemarker/ext/beans/else;->do:Landroid/support/v4/we2;

    .line 10
    invoke-virtual {p1}, Landroid/support/v4/we2;->intValue()I

    move-result p2

    sget v1, Landroid/support/v4/ul2;->break:I

    if-ge p2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lfreemarker/ext/beans/else;->new:Z

    .line 11
    new-instance p2, Lfreemarker/ext/beans/const;

    invoke-direct {p2, p1}, Lfreemarker/ext/beans/const;-><init>(Landroid/support/v4/we2;)V

    iput-object p2, p0, Lfreemarker/ext/beans/else;->if:Lfreemarker/ext/beans/const;

    return-void
.end method


# virtual methods
.method public break()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/else;->new:Z

    return v0
.end method

.method public case()Landroid/support/v4/we2;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/else;->do:Landroid/support/v4/we2;

    return-object v0
.end method

.method public catch()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/else;->if:Lfreemarker/ext/beans/const;

    invoke-virtual {v0}, Lfreemarker/ext/beans/const;->goto()Z

    move-result v0

    return v0
.end method

.method public class()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/else;->goto:Z

    return v0
.end method

.method public const()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/else;->for:Z

    return v0
.end method

.method public default(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/ext/beans/else;->goto:Z

    return-void
.end method

.method public do(Z)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/beans/else;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lfreemarker/ext/beans/else;->if:Lfreemarker/ext/beans/const;

    .line 3
    invoke-virtual {p1}, Lfreemarker/ext/beans/const;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/ext/beans/const;

    iput-object p1, v0, Lfreemarker/ext/beans/else;->if:Lfreemarker/ext/beans/const;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to clone BeansWrapperConfiguration"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public else()Lfreemarker/ext/beans/MethodAppearanceFineTuner;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/else;->if:Lfreemarker/ext/beans/const;

    invoke-virtual {v0}, Lfreemarker/ext/beans/const;->case()Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lfreemarker/ext/beans/else;

    .line 3
    iget-object v2, p0, Lfreemarker/ext/beans/else;->do:Landroid/support/v4/we2;

    iget-object v3, p1, Lfreemarker/ext/beans/else;->do:Landroid/support/v4/we2;

    invoke-virtual {v2, v3}, Landroid/support/v4/we2;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 4
    :cond_3
    iget-boolean v2, p0, Lfreemarker/ext/beans/else;->for:Z

    iget-boolean v3, p1, Lfreemarker/ext/beans/else;->for:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 5
    :cond_4
    iget-boolean v2, p0, Lfreemarker/ext/beans/else;->new:Z

    iget-boolean v3, p1, Lfreemarker/ext/beans/else;->new:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 6
    :cond_5
    iget v2, p0, Lfreemarker/ext/beans/else;->try:I

    iget v3, p1, Lfreemarker/ext/beans/else;->try:I

    if-eq v2, v3, :cond_6

    return v1

    .line 7
    :cond_6
    iget-object v2, p0, Lfreemarker/ext/beans/else;->case:Lfreemarker/template/ObjectWrapper;

    iget-object v3, p1, Lfreemarker/ext/beans/else;->case:Lfreemarker/template/ObjectWrapper;

    if-eq v2, v3, :cond_7

    return v1

    .line 8
    :cond_7
    iget-boolean v2, p0, Lfreemarker/ext/beans/else;->else:Z

    iget-boolean v3, p1, Lfreemarker/ext/beans/else;->else:Z

    if-eq v2, v3, :cond_8

    return v1

    .line 9
    :cond_8
    iget-boolean v2, p0, Lfreemarker/ext/beans/else;->goto:Z

    iget-boolean v3, p1, Lfreemarker/ext/beans/else;->goto:Z

    if-eq v2, v3, :cond_9

    return v1

    .line 10
    :cond_9
    iget-object v2, p0, Lfreemarker/ext/beans/else;->if:Lfreemarker/ext/beans/const;

    iget-object p1, p1, Lfreemarker/ext/beans/else;->if:Lfreemarker/ext/beans/const;

    invoke-virtual {v2, p1}, Lfreemarker/ext/beans/const;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public final()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/else;->else:Z

    return v0
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/ext/beans/else;->try:I

    return v0
.end method

.method public goto()Lfreemarker/ext/beans/MethodSorter;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/else;->if:Lfreemarker/ext/beans/const;

    invoke-virtual {v0}, Lfreemarker/ext/beans/const;->else()Lfreemarker/ext/beans/MethodSorter;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/else;->do:Landroid/support/v4/we2;

    invoke-virtual {v0}, Landroid/support/v4/we2;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v2, p0, Lfreemarker/ext/beans/else;->for:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v2, p0, Lfreemarker/ext/beans/else;->new:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v2, p0, Lfreemarker/ext/beans/else;->try:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v2, p0, Lfreemarker/ext/beans/else;->case:Lfreemarker/template/ObjectWrapper;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-boolean v2, p0, Lfreemarker/ext/beans/else;->else:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v2, 0x4d5

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-boolean v2, p0, Lfreemarker/ext/beans/else;->goto:Z

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    const/16 v3, 0x4d5

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lfreemarker/ext/beans/else;->if:Lfreemarker/ext/beans/const;

    invoke-virtual {v1}, Lfreemarker/ext/beans/const;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public if()Lfreemarker/ext/beans/const;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/else;->if:Lfreemarker/ext/beans/const;

    return-object v0
.end method

.method public import(Lfreemarker/ext/beans/MethodAppearanceFineTuner;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/else;->if:Lfreemarker/ext/beans/const;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/const;->const(Lfreemarker/ext/beans/MethodAppearanceFineTuner;)V

    return-void
.end method

.method public native(Lfreemarker/ext/beans/MethodSorter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/else;->if:Lfreemarker/ext/beans/const;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/const;->final(Lfreemarker/ext/beans/MethodSorter;)V

    return-void
.end method

.method public new()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/else;->if:Lfreemarker/ext/beans/const;

    invoke-virtual {v0}, Lfreemarker/ext/beans/const;->for()Z

    move-result v0

    return v0
.end method

.method public public(Lfreemarker/template/ObjectWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/beans/else;->case:Lfreemarker/template/ObjectWrapper;

    return-void
.end method

.method public return(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/ext/beans/else;->new:Z

    return-void
.end method

.method public static(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/ext/beans/else;->for:Z

    return-void
.end method

.method public super(I)V
    .locals 0

    .line 1
    iput p1, p0, Lfreemarker/ext/beans/else;->try:I

    return-void
.end method

.method public switch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/ext/beans/else;->else:Z

    return-void
.end method

.method public this()Lfreemarker/template/ObjectWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/else;->case:Lfreemarker/template/ObjectWrapper;

    return-object v0
.end method

.method public throw(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/else;->if:Lfreemarker/ext/beans/const;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/const;->catch(Z)V

    return-void
.end method

.method public throws(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/else;->if:Lfreemarker/ext/beans/const;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/const;->super(Z)V

    return-void
.end method

.method public try()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/else;->if:Lfreemarker/ext/beans/const;

    invoke-virtual {v0}, Lfreemarker/ext/beans/const;->new()I

    move-result v0

    return v0
.end method

.method public while(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/else;->if:Lfreemarker/ext/beans/const;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/const;->class(I)V

    return-void
.end method
