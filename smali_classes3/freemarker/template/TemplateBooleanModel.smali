.class public interface abstract Lfreemarker/template/TemplateBooleanModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModel;


# static fields
.field public static final FALSE:Lfreemarker/template/TemplateBooleanModel;

.field public static final TRUE:Lfreemarker/template/TemplateBooleanModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/template/catch;

    invoke-direct {v0}, Lfreemarker/template/catch;-><init>()V

    sput-object v0, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    .line 2
    new-instance v0, Lfreemarker/template/switch;

    invoke-direct {v0}, Lfreemarker/template/switch;-><init>()V

    sput-object v0, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    return-void
.end method


# virtual methods
.method public abstract getAsBoolean()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation
.end method
