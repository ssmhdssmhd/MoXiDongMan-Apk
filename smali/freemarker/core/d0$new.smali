.class Lfreemarker/core/d0$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/d0;->K1()Lfreemarker/template/TemplateHashModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lfreemarker/core/d0;


# direct methods
.method public constructor <init>(Lfreemarker/core/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/d0$new;->do:Lfreemarker/core/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0$new;->do:Lfreemarker/core/d0;

    invoke-static {v0}, Lfreemarker/core/d0;->T0(Lfreemarker/core/d0;)Lfreemarker/core/d0$this;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfreemarker/template/native;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/d0$new;->do:Lfreemarker/core/d0;

    invoke-static {v0}, Lfreemarker/core/d0;->R0(Lfreemarker/core/d0;)Lfreemarker/template/TemplateHashModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lfreemarker/core/d0$new;->do:Lfreemarker/core/d0;

    invoke-static {v0}, Lfreemarker/core/d0;->S0(Lfreemarker/core/d0;)Lfreemarker/template/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfreemarker/template/do;->I1(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
