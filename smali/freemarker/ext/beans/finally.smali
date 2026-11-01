.class Lfreemarker/ext/beans/finally;
.super Lfreemarker/ext/beans/extends;
.source "SourceFile"


# instance fields
.field private final do:Lfreemarker/ext/beans/this;

.field private final if:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lfreemarker/ext/beans/this;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/beans/extends;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/beans/finally;->do:Lfreemarker/ext/beans/this;

    .line 3
    iput-object p2, p0, Lfreemarker/ext/beans/finally;->if:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public do()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/finally;->if:[Ljava/lang/Object;

    return-object v0
.end method

.method public for(Lfreemarker/ext/beans/try;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/finally;->do:Lfreemarker/ext/beans/this;

    iget-object v1, p0, Lfreemarker/ext/beans/finally;->if:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lfreemarker/ext/beans/this;->new(Lfreemarker/ext/beans/try;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public if()Lfreemarker/ext/beans/this;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/finally;->do:Lfreemarker/ext/beans/this;

    return-object v0
.end method

.method public new(Lfreemarker/ext/beans/try;Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/finally;->do:Lfreemarker/ext/beans/this;

    iget-object v1, p0, Lfreemarker/ext/beans/finally;->if:[Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, v1}, Lfreemarker/ext/beans/this;->try(Lfreemarker/ext/beans/try;Ljava/lang/Object;[Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method
