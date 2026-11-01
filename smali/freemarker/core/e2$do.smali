.class Lfreemarker/core/e2$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private final do:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic for:Lfreemarker/core/e2;

.field private final if:Lfreemarker/core/d0;


# direct methods
.method public constructor <init>(Lfreemarker/core/e2;Ljava/lang/String;Lfreemarker/core/d0;Lfreemarker/template/static;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lfreemarker/core/e2$do;->for:Lfreemarker/core/e2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lfreemarker/core/e2$do;->if:Lfreemarker/core/d0;

    .line 3
    invoke-virtual {p3}, Lfreemarker/core/t;->interface()Lfreemarker/core/TemplateClassResolver;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lfreemarker/core/TemplateClassResolver;->resolve(Ljava/lang/String;Lfreemarker/core/d0;Lfreemarker/template/static;)Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lfreemarker/core/e2$do;->do:Ljava/lang/Class;

    .line 4
    const-class p4, Lfreemarker/template/TemplateModel;

    invoke-virtual {p4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz p4, :cond_3

    .line 5
    const-class p4, Lfreemarker/ext/beans/new;

    invoke-virtual {p4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    const-string v4, " built-in"

    if-nez p4, :cond_2

    .line 6
    sget-object p4, Lfreemarker/core/e2;->final:Ljava/lang/Class;

    if-eqz p4, :cond_1

    invoke-virtual {p4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p2, Landroid/support/v4/nl2;

    new-array p4, v3, [Ljava/lang/Object;

    const-string v3, "Jython Models cannot be instantiated using the ?"

    aput-object v3, p4, v2

    iget-object v2, p1, Lfreemarker/core/return;->this:Ljava/lang/String;

    aput-object v2, p4, v1

    aput-object v4, p4, v0

    invoke-direct {p2, p1, p3, p4}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw p2

    :cond_1
    :goto_0
    return-void

    .line 8
    :cond_2
    new-instance p2, Landroid/support/v4/nl2;

    new-array p4, v3, [Ljava/lang/Object;

    const-string v3, "Bean Models cannot be instantiated using the ?"

    aput-object v3, p4, v2

    iget-object v2, p1, Lfreemarker/core/return;->this:Ljava/lang/String;

    aput-object v2, p4, v1

    aput-object v4, p4, v0

    invoke-direct {p2, p1, p3, p4}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw p2

    .line 9
    :cond_3
    new-instance p4, Landroid/support/v4/nl2;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Class "

    aput-object v4, v3, v2

    .line 10
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v1

    const-string p2, " does not implement freemarker.template.TemplateModel"

    aput-object p2, v3, v0

    invoke-direct {p4, p1, p3, v3}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw p4
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/e2$do;->if:Lfreemarker/core/d0;

    invoke-virtual {v0}, Lfreemarker/core/t;->implements()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lfreemarker/ext/beans/try;

    if-eqz v1, :cond_0

    check-cast v0, Lfreemarker/ext/beans/try;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lfreemarker/ext/beans/try;->super()Lfreemarker/ext/beans/try;

    move-result-object v0

    .line 4
    :goto_0
    iget-object v1, p0, Lfreemarker/core/e2$do;->do:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lfreemarker/ext/beans/try;->b(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
