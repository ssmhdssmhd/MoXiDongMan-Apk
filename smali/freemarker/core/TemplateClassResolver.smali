.class public interface abstract Lfreemarker/core/TemplateClassResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALLOWS_NOTHING_RESOLVER:Lfreemarker/core/TemplateClassResolver;

.field public static final SAFER_RESOLVER:Lfreemarker/core/TemplateClassResolver;

.field public static final UNRESTRICTED_RESOLVER:Lfreemarker/core/TemplateClassResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/core/TemplateClassResolver$do;

    invoke-direct {v0}, Lfreemarker/core/TemplateClassResolver$do;-><init>()V

    sput-object v0, Lfreemarker/core/TemplateClassResolver;->UNRESTRICTED_RESOLVER:Lfreemarker/core/TemplateClassResolver;

    .line 2
    new-instance v0, Lfreemarker/core/TemplateClassResolver$if;

    invoke-direct {v0}, Lfreemarker/core/TemplateClassResolver$if;-><init>()V

    sput-object v0, Lfreemarker/core/TemplateClassResolver;->SAFER_RESOLVER:Lfreemarker/core/TemplateClassResolver;

    .line 3
    new-instance v0, Lfreemarker/core/TemplateClassResolver$for;

    invoke-direct {v0}, Lfreemarker/core/TemplateClassResolver$for;-><init>()V

    sput-object v0, Lfreemarker/core/TemplateClassResolver;->ALLOWS_NOTHING_RESOLVER:Lfreemarker/core/TemplateClassResolver;

    return-void
.end method


# virtual methods
.method public abstract resolve(Ljava/lang/String;Lfreemarker/core/d0;Lfreemarker/template/static;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method
