.class Lfreemarker/core/e$super;
.super Lfreemarker/core/volatile;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "super"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/e$super$do;
    }
.end annotation


# instance fields
.field private final:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/volatile;-><init>()V

    .line 2
    iput-boolean p1, p0, Lfreemarker/core/e$super;->final:Z

    return-void
.end method

.method public static synthetic s(Lfreemarker/core/e$super;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfreemarker/core/e$super;->final:Z

    return p0
.end method


# virtual methods
.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/e$super$do;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lfreemarker/core/e$super$do;-><init>(Lfreemarker/core/e$super;Lfreemarker/core/d0;Lfreemarker/core/e$do;)V

    return-object v0
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0}, Lfreemarker/core/h0;->switch()V

    return-void
.end method
