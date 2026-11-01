.class final Lfreemarker/ext/beans/transient;
.super Lfreemarker/ext/beans/this;
.source "SourceFile"


# instance fields
.field private final do:Ljava/lang/reflect/Member;

.field public final if:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lfreemarker/ext/beans/this;-><init>()V

    .line 5
    iput-object p1, p0, Lfreemarker/ext/beans/transient;->do:Ljava/lang/reflect/Member;

    .line 6
    iput-object p2, p0, Lfreemarker/ext/beans/transient;->if:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;[Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/beans/this;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/beans/transient;->do:Ljava/lang/reflect/Member;

    .line 3
    iput-object p2, p0, Lfreemarker/ext/beans/transient;->if:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public case()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/transient;->do:Ljava/lang/reflect/Member;

    instance-of v0, v0, Ljava/lang/reflect/Constructor;

    return v0
.end method

.method public do()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/transient;->do:Ljava/lang/reflect/Member;

    invoke-static {v0}, Lfreemarker/ext/beans/j;->final(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public else()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/transient;->do:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public for()[Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/transient;->if:[Ljava/lang/Class;

    return-object v0
.end method

.method public goto()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/transient;->do:Ljava/lang/reflect/Member;

    invoke-static {v0}, Lfreemarker/ext/beans/j;->goto(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/transient;->do:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public new(Lfreemarker/ext/beans/try;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lfreemarker/ext/beans/transient;->do:Ljava/lang/reflect/Member;

    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public try(Lfreemarker/ext/beans/try;Ljava/lang/Object;[Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/transient;->do:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {p1, p2, v0, p3}, Lfreemarker/ext/beans/try;->abstract(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method
