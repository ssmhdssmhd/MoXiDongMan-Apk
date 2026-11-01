.class Lfreemarker/template/utility/throw$try$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/template/utility/throw$try;->next()Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lfreemarker/template/TemplateModel;

.field public final synthetic if:Lfreemarker/template/utility/throw$try;


# direct methods
.method public constructor <init>(Lfreemarker/template/utility/throw$try;Lfreemarker/template/TemplateModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/template/utility/throw$try$do;->if:Lfreemarker/template/utility/throw$try;

    iput-object p2, p0, Lfreemarker/template/utility/throw$try$do;->do:Lfreemarker/template/TemplateModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/utility/throw$try$do;->do:Lfreemarker/template/TemplateModel;

    return-object v0
.end method

.method public getValue()Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/utility/throw$try$do;->if:Lfreemarker/template/utility/throw$try;

    invoke-static {v0}, Lfreemarker/template/utility/throw$try;->do(Lfreemarker/template/utility/throw$try;)Lfreemarker/template/TemplateHashModelEx;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/template/utility/throw$try$do;->do:Lfreemarker/template/TemplateModel;

    check-cast v1, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    return-object v0
.end method
