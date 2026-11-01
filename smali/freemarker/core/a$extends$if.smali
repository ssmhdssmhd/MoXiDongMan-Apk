.class Lfreemarker/core/a$extends$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateScalarModel;
.implements Lfreemarker/template/TemplateHashModel;
.implements Lfreemarker/template/TemplateMethodModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/a$extends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field private final do:Lfreemarker/template/TemplateDateModel;

.field private final for:Lfreemarker/core/z3;

.field private final if:Lfreemarker/core/d0;

.field private new:Ljava/lang/String;

.field public final synthetic try:Lfreemarker/core/a$extends;


# direct methods
.method public constructor <init>(Lfreemarker/core/a$extends;Lfreemarker/template/TemplateDateModel;Lfreemarker/core/d0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lfreemarker/core/a$extends$if;->try:Lfreemarker/core/a$extends;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lfreemarker/core/a$extends$if;->do:Lfreemarker/template/TemplateDateModel;

    .line 3
    iput-object p3, p0, Lfreemarker/core/a$extends$if;->if:Lfreemarker/core/d0;

    .line 4
    invoke-interface {p2}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p1, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    .line 6
    invoke-static {p2, v1}, Lfreemarker/core/f0;->while(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/h0;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    iget-object p1, p1, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p3, v0, p2, p1, v1}, Lfreemarker/core/d0;->h2(ILjava/lang/Class;Lfreemarker/core/h0;Z)Lfreemarker/core/z3;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lfreemarker/core/a$extends$if;->for:Lfreemarker/core/z3;

    return-void
.end method

.method private do(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Landroid/support/v4/ez1;

    iget-object v1, p0, Lfreemarker/core/a$extends$if;->if:Lfreemarker/core/d0;

    iget-object v2, p0, Lfreemarker/core/a$extends$if;->do:Lfreemarker/template/TemplateDateModel;

    iget-object v5, p0, Lfreemarker/core/a$extends$if;->try:Lfreemarker/core/a$extends;

    iget-object v4, v5, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    const/4 v6, 0x1

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lfreemarker/core/d0;->o1(Lfreemarker/template/TemplateDateModel;Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0;Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "Failed to format value"

    .line 2
    invoke-static {v0, p1}, Lfreemarker/core/y4;->else(Ljava/lang/String;Lfreemarker/template/TemplateException;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1
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
    iget-object v0, p0, Lfreemarker/core/a$extends$if;->try:Lfreemarker/core/a$extends;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/return;->f(Ljava/util/List;I)V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lfreemarker/core/a$extends$if;->do(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/a$extends$if;->do(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public getAsString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/a$extends$if;->new:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lfreemarker/core/a$extends$if;->for:Lfreemarker/core/z3;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lfreemarker/core/a$extends$if;->do:Lfreemarker/template/TemplateDateModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lfreemarker/core/a$extends$if;->try:Lfreemarker/core/a$extends;

    iget-object v0, v0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfreemarker/core/b5;->import(Lfreemarker/core/h0;Landroid/support/v4/xb2;)Landroid/support/v4/vl2;

    move-result-object v0

    throw v0

    .line 5
    :cond_0
    new-instance v0, Landroid/support/v4/mc;

    invoke-direct {v0}, Landroid/support/v4/mc;-><init>()V

    throw v0

    .line 6
    :cond_1
    :try_start_0
    iget-object v1, p0, Lfreemarker/core/a$extends$if;->do:Lfreemarker/template/TemplateDateModel;

    invoke-virtual {v0, v1}, Lfreemarker/core/z3;->for(Lfreemarker/template/TemplateDateModel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/core/f0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/a$extends$if;->new:Ljava/lang/String;
    :try_end_0
    .catch Landroid/support/v4/p52; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    :try_start_1
    iget-object v1, p0, Lfreemarker/core/a$extends$if;->for:Lfreemarker/core/z3;

    iget-object v2, p0, Lfreemarker/core/a$extends$if;->try:Lfreemarker/core/a$extends;

    iget-object v2, v2, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lfreemarker/core/b5;->throw(Lfreemarker/core/z3;Lfreemarker/core/h0;Landroid/support/v4/p52;Z)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Lfreemarker/template/TemplateException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "Failed to format date/time/datetime"

    .line 8
    invoke-static {v1, v0}, Lfreemarker/core/y4;->else(Ljava/lang/String;Lfreemarker/template/TemplateException;)Landroid/support/v4/k52;

    move-result-object v0

    throw v0

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lfreemarker/core/a$extends$if;->new:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
