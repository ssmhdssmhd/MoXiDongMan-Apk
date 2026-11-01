.class Lfreemarker/core/r0$do$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/r0$do$do;->next()Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final do:Lfreemarker/template/TemplateModel;

.field public final synthetic for:Lfreemarker/core/r0$do$do;

.field private final if:Lfreemarker/template/TemplateModel;


# direct methods
.method public constructor <init>(Lfreemarker/core/r0$do$do;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lfreemarker/core/r0$do$do$do;->for:Lfreemarker/core/r0$do$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lfreemarker/core/r0$do$do;->do(Lfreemarker/core/r0$do$do;)Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/r0$do$do$do;->do:Lfreemarker/template/TemplateModel;

    .line 3
    invoke-static {p1}, Lfreemarker/core/r0$do$do;->if(Lfreemarker/core/r0$do$do;)Lfreemarker/template/TemplateModelIterator;

    move-result-object p1

    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/r0$do$do$do;->if:Lfreemarker/template/TemplateModel;

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
    iget-object v0, p0, Lfreemarker/core/r0$do$do$do;->do:Lfreemarker/template/TemplateModel;

    return-object v0
.end method

.method public getValue()Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/r0$do$do$do;->if:Lfreemarker/template/TemplateModel;

    return-object v0
.end method
