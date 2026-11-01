.class Lfreemarker/core/transient$for;
.super Lfreemarker/core/transient$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/transient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/transient$for$if;
    }
.end annotation


# static fields
.field private static final final:Lfreemarker/template/TemplateMethodModelEx;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/core/transient$for$do;

    invoke-direct {v0}, Lfreemarker/core/transient$for$do;-><init>()V

    sput-object v0, Lfreemarker/core/transient$for;->final:Lfreemarker/template/TemplateMethodModelEx;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/transient$if;-><init>(Lfreemarker/core/transient$do;)V

    return-void
.end method


# virtual methods
.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/transient$if;->r(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lfreemarker/core/transient$for;->final:Lfreemarker/template/TemplateMethodModelEx;

    goto :goto_0

    :cond_0
    new-instance v0, Lfreemarker/core/transient$for$if;

    invoke-direct {v0, p1}, Lfreemarker/core/transient$for$if;-><init>(Lfreemarker/template/TemplateModel;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
