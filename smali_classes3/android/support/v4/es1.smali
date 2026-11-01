.class public Landroid/support/v4/es1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Lorg/jsoup/select/Elements;

.field private for:Landroid/support/v4/es1;

.field private if:Z


# direct methods
.method private constructor <init>(Lorg/jsoup/nodes/Element;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroid/support/v4/es1;->if:Z

    .line 7
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    iput-object v0, p0, Landroid/support/v4/es1;->do:Lorg/jsoup/select/Elements;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Lorg/jsoup/select/Elements;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/es1;->if:Z

    .line 3
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    iput-object v0, p0, Landroid/support/v4/es1;->do:Lorg/jsoup/select/Elements;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static for(Lorg/jsoup/nodes/Element;)Landroid/support/v4/es1;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/es1;

    invoke-direct {v0, p0}, Landroid/support/v4/es1;-><init>(Lorg/jsoup/nodes/Element;)V

    return-object v0
.end method

.method public static if(Landroid/support/v4/es1;)Landroid/support/v4/es1;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/es1;

    invoke-virtual {p0}, Landroid/support/v4/es1;->do()Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/es1;-><init>(Lorg/jsoup/select/Elements;)V

    invoke-virtual {v0, p0}, Landroid/support/v4/es1;->break(Landroid/support/v4/es1;)Landroid/support/v4/es1;

    move-result-object p0

    return-object p0
.end method

.method public static new(Lorg/jsoup/select/Elements;)Landroid/support/v4/es1;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/es1;

    invoke-direct {v0, p0}, Landroid/support/v4/es1;-><init>(Lorg/jsoup/select/Elements;)V

    return-object v0
.end method


# virtual methods
.method public break(Landroid/support/v4/es1;)Landroid/support/v4/es1;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/es1;->for:Landroid/support/v4/es1;

    return-object p0
.end method

.method public case()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/es1;->if:Z

    return v0
.end method

.method public catch()Lorg/jsoup/nodes/Element;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/es1;->do:Lorg/jsoup/select/Elements;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/es1;->do:Lorg/jsoup/select/Elements;

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/hj2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current context is more than one el,total = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/es1;->do:Lorg/jsoup/select/Elements;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/hj2;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public do()Lorg/jsoup/select/Elements;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/es1;->do:Lorg/jsoup/select/Elements;

    return-object v0
.end method

.method public else()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/es1;->if:Z

    return-void
.end method

.method public goto()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/es1;->if:Z

    return-void
.end method

.method public this(Lorg/jsoup/select/Elements;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/es1;->do:Lorg/jsoup/select/Elements;

    return-void
.end method

.method public try()Landroid/support/v4/es1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/es1;->for:Landroid/support/v4/es1;

    return-object v0
.end method
