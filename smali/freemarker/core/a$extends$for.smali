.class Lfreemarker/core/a$extends$for;
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
    name = "for"
.end annotation


# instance fields
.field public final synthetic case:Lfreemarker/core/a$extends;

.field private final do:Lfreemarker/template/TemplateNumberModel;

.field private final for:Lfreemarker/core/d0;

.field private final if:Ljava/lang/Number;

.field private final new:Lfreemarker/core/f4;

.field private try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfreemarker/core/a$extends;Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lfreemarker/core/a$extends$for;->case:Lfreemarker/core/a$extends;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lfreemarker/core/a$extends$for;->for:Lfreemarker/core/d0;

    .line 3
    iput-object p2, p0, Lfreemarker/core/a$extends$for;->do:Lfreemarker/template/TemplateNumberModel;

    .line 4
    iget-object v0, p1, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-static {p2, v0}, Lfreemarker/core/f0;->import(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/h0;)Ljava/lang/Number;

    move-result-object p2

    iput-object p2, p0, Lfreemarker/core/a$extends$for;->if:Ljava/lang/Number;

    const/4 p2, 0x1

    .line 5
    :try_start_0
    invoke-virtual {p3, p1, p2}, Lfreemarker/core/d0;->w2(Lfreemarker/core/h0;Z)Lfreemarker/core/f4;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/a$extends$for;->new:Lfreemarker/core/f4;
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to get default number format"

    .line 6
    invoke-static {p2, p1}, Lfreemarker/core/y4;->else(Ljava/lang/String;Lfreemarker/template/TemplateException;)Landroid/support/v4/k52;

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
    iget-object v0, p0, Lfreemarker/core/a$extends$for;->case:Lfreemarker/core/a$extends;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/return;->f(Ljava/util/List;I)V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lfreemarker/core/a$extends$for;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/a$extends$for;->for:Lfreemarker/core/d0;

    iget-object v1, p0, Lfreemarker/core/a$extends$for;->case:Lfreemarker/core/a$extends;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lfreemarker/core/d0;->y2(Ljava/lang/String;Lfreemarker/core/h0;Z)Lfreemarker/core/f4;

    move-result-object p1
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    instance-of v0, p1, Lfreemarker/core/const;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lfreemarker/core/a$extends$for;->for:Lfreemarker/core/d0;

    iget-object v1, p0, Lfreemarker/core/a$extends$for;->if:Ljava/lang/Number;

    check-cast p1, Lfreemarker/core/const;

    iget-object v2, p0, Lfreemarker/core/a$extends$for;->case:Lfreemarker/core/a$extends;

    iget-object v2, v2, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, v1, p1, v2}, Lfreemarker/core/d0;->r1(Ljava/lang/Number;Lfreemarker/core/const;Lfreemarker/core/h0;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lfreemarker/core/a$extends$for;->for:Lfreemarker/core/d0;

    iget-object v1, p0, Lfreemarker/core/a$extends$for;->do:Lfreemarker/template/TemplateNumberModel;

    iget-object v3, p0, Lfreemarker/core/a$extends$for;->case:Lfreemarker/core/a$extends;

    iget-object v3, v3, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, v1, p1, v3, v2}, Lfreemarker/core/d0;->q1(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/f4;Lfreemarker/core/h0;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lfreemarker/template/TemplateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    :goto_0
    new-instance v0, Landroid/support/v4/ez1;

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "Failed to format number"

    .line 6
    invoke-static {v0, p1}, Lfreemarker/core/y4;->else(Ljava/lang/String;Lfreemarker/template/TemplateException;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    const-string v0, "Failed to get number format"

    .line 7
    invoke-static {v0, p1}, Lfreemarker/core/y4;->else(Ljava/lang/String;Lfreemarker/template/TemplateException;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1
.end method

.method public getAsString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/a$extends$for;->try:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/a$extends$for;->new:Lfreemarker/core/f4;

    instance-of v1, v0, Lfreemarker/core/const;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lfreemarker/core/a$extends$for;->for:Lfreemarker/core/d0;

    iget-object v2, p0, Lfreemarker/core/a$extends$for;->if:Ljava/lang/Number;

    check-cast v0, Lfreemarker/core/const;

    iget-object v3, p0, Lfreemarker/core/a$extends$for;->case:Lfreemarker/core/a$extends;

    iget-object v3, v3, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v1, v2, v0, v3}, Lfreemarker/core/d0;->r1(Ljava/lang/Number;Lfreemarker/core/const;Lfreemarker/core/h0;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/a$extends$for;->try:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lfreemarker/core/a$extends$for;->for:Lfreemarker/core/d0;

    iget-object v2, p0, Lfreemarker/core/a$extends$for;->do:Lfreemarker/template/TemplateNumberModel;

    iget-object v3, p0, Lfreemarker/core/a$extends$for;->case:Lfreemarker/core/a$extends;

    iget-object v3, v3, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Lfreemarker/core/d0;->q1(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/f4;Lfreemarker/core/h0;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/a$extends$for;->try:Ljava/lang/String;
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to format number"

    .line 5
    invoke-static {v1, v0}, Lfreemarker/core/y4;->else(Ljava/lang/String;Lfreemarker/template/TemplateException;)Landroid/support/v4/k52;

    move-result-object v0

    throw v0

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lfreemarker/core/a$extends$for;->try:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
