.class Lfreemarker/core/f$while;
.super Lfreemarker/core/strictfp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "while"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/f$while$do;
    }
.end annotation


# instance fields
.field private final final:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/strictfp;-><init>()V

    .line 2
    iput-boolean p1, p0, Lfreemarker/core/f$while;->final:Z

    return-void
.end method

.method public static synthetic t(Lfreemarker/core/f$while;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfreemarker/core/f$while;->final:Z

    return p0
.end method


# virtual methods
.method public r(Ljava/lang/String;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    new-instance p2, Lfreemarker/core/f$while$do;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lfreemarker/core/f$while$do;-><init>(Lfreemarker/core/f$while;Ljava/lang/String;Lfreemarker/core/f$do;)V

    return-object p2
.end method
