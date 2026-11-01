.class Lfreemarker/core/a$extends;
.super Lfreemarker/core/return;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extends"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/a$extends$for;,
        Lfreemarker/core/a$extends$if;,
        Lfreemarker/core/a$extends$do;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/return;-><init>()V

    return-void
.end method


# virtual methods
.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    .line 2
    instance-of v0, v3, Lfreemarker/template/TemplateNumberModel;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lfreemarker/core/a$extends$for;

    check-cast v3, Lfreemarker/template/TemplateNumberModel;

    invoke-direct {v0, p0, v3, p1}, Lfreemarker/core/a$extends$for;-><init>(Lfreemarker/core/a$extends;Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/d0;)V

    return-object v0

    .line 4
    :cond_0
    instance-of v0, v3, Lfreemarker/template/TemplateDateModel;

    if-eqz v0, :cond_1

    .line 5
    check-cast v3, Lfreemarker/template/TemplateDateModel;

    .line 6
    new-instance v0, Lfreemarker/core/a$extends$if;

    invoke-direct {v0, p0, v3, p1}, Lfreemarker/core/a$extends$if;-><init>(Lfreemarker/core/a$extends;Lfreemarker/template/TemplateDateModel;Lfreemarker/core/d0;)V

    return-object v0

    .line 7
    :cond_1
    instance-of v0, v3, Landroid/support/v4/ez1;

    if-eqz v0, :cond_2

    return-object v3

    .line 8
    :cond_2
    instance-of v0, v3, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v0, :cond_3

    .line 9
    new-instance v0, Lfreemarker/core/a$extends$do;

    check-cast v3, Lfreemarker/template/TemplateBooleanModel;

    invoke-direct {v0, p0, v3, p1}, Lfreemarker/core/a$extends$do;-><init>(Lfreemarker/core/a$extends;Lfreemarker/template/TemplateBooleanModel;Lfreemarker/core/d0;)V

    return-object v0

    .line 10
    :cond_3
    instance-of v0, v3, Lfreemarker/template/TemplateScalarModel;

    if-eqz v0, :cond_4

    .line 11
    new-instance p1, Landroid/support/v4/ez1;

    check-cast v3, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v3}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 12
    :cond_4
    invoke-virtual {p1}, Lfreemarker/core/t;->y()Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, v3, Lfreemarker/ext/beans/new;

    if-eqz v0, :cond_5

    .line 13
    new-instance p1, Landroid/support/v4/ez1;

    check-cast v3, Lfreemarker/ext/beans/new;

    invoke-static {v3}, Lfreemarker/ext/beans/_BeansAPI;->if(Lfreemarker/ext/beans/new;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 14
    :cond_5
    new-instance v0, Lfreemarker/core/r4;

    iget-object v2, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v4, Lfreemarker/template/TemplateNumberModel;

    aput-object v4, v5, v1

    const/4 v1, 0x1

    const-class v4, Lfreemarker/template/TemplateDateModel;

    aput-object v4, v5, v1

    const/4 v1, 0x2

    const-class v4, Lfreemarker/template/TemplateBooleanModel;

    aput-object v4, v5, v1

    const/4 v1, 0x3

    const-class v4, Lfreemarker/template/TemplateScalarModel;

    aput-object v4, v5, v1

    const-string v4, "number, date, boolean or string"

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/d0;)V

    throw v0
.end method
