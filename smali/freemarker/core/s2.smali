.class public Lfreemarker/core/s2;
.super Lfreemarker/core/r4;
.source "SourceFile"


# static fields
.field private static final break:[Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 1
    const-class v2, Lfreemarker/template/TemplateSequenceModel;

    aput-object v2, v0, v1

    sput-object v0, Lfreemarker/core/s2;->break:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/d0;)V
    .locals 1

    const-string v0, "Expecting sequence value here"

    .line 1
    invoke-direct {p0, p1, v0}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/d0;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/d0;Lfreemarker/core/z4;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/d0;Lfreemarker/core/z4;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/b1;
        }
    .end annotation

    .line 4
    sget-object v0, Landroid/support/v4/vm;->do:[Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0, p3}, Lfreemarker/core/s2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;[Ljava/lang/Object;Lfreemarker/core/d0;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;Lfreemarker/core/d0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/b1;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 5
    invoke-direct {p0, p1, p2, v0, p4}, Lfreemarker/core/s2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;[Ljava/lang/Object;Lfreemarker/core/d0;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;[Ljava/lang/Object;Lfreemarker/core/d0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/b1;
        }
    .end annotation

    .line 6
    sget-object v4, Lfreemarker/core/s2;->break:[Ljava/lang/Class;

    const-string v3, "sequence"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lfreemarker/core/d0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/core/d0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p1}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/d0;Ljava/lang/String;)V

    return-void
.end method
