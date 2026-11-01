.class public interface abstract Lfreemarker/template/TemplateExceptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEBUG_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

.field public static final HTML_DEBUG_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

.field public static final IGNORE_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

.field public static final RETHROW_HANDLER:Lfreemarker/template/TemplateExceptionHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/template/TemplateExceptionHandler$do;

    invoke-direct {v0}, Lfreemarker/template/TemplateExceptionHandler$do;-><init>()V

    sput-object v0, Lfreemarker/template/TemplateExceptionHandler;->IGNORE_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    .line 2
    new-instance v0, Lfreemarker/template/TemplateExceptionHandler$if;

    invoke-direct {v0}, Lfreemarker/template/TemplateExceptionHandler$if;-><init>()V

    sput-object v0, Lfreemarker/template/TemplateExceptionHandler;->RETHROW_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    .line 3
    new-instance v0, Lfreemarker/template/TemplateExceptionHandler$for;

    invoke-direct {v0}, Lfreemarker/template/TemplateExceptionHandler$for;-><init>()V

    sput-object v0, Lfreemarker/template/TemplateExceptionHandler;->DEBUG_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    .line 4
    new-instance v0, Lfreemarker/template/TemplateExceptionHandler$new;

    invoke-direct {v0}, Lfreemarker/template/TemplateExceptionHandler$new;-><init>()V

    sput-object v0, Lfreemarker/template/TemplateExceptionHandler;->HTML_DEBUG_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    return-void
.end method


# virtual methods
.method public abstract handleTemplateException(Lfreemarker/template/TemplateException;Lfreemarker/core/d0;Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method
