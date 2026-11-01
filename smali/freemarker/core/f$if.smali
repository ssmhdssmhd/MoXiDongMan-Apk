.class abstract Lfreemarker/core/f$if;
.super Lfreemarker/core/strictfp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "if"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/strictfp;-><init>()V

    return-void
.end method


# virtual methods
.method public r(Ljava/lang/String;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/core/f$if$do;

    invoke-direct {v0, p0, p2, p1}, Lfreemarker/core/f$if$do;-><init>(Lfreemarker/core/f$if;Lfreemarker/core/d0;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract t()Z
.end method

.method public abstract u(Lfreemarker/core/p4;Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method
