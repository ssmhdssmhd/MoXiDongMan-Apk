.class public interface abstract Lfreemarker/template/TemplateScalarModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModel;


# static fields
.field public static final EMPTY_STRING:Lfreemarker/template/TemplateModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/ez1;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    return-void
.end method


# virtual methods
.method public abstract getAsString()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation
.end method
