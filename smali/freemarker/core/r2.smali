.class public Lfreemarker/core/r2;
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
    const-class v2, Lfreemarker/template/TemplateNumberModel;

    aput-object v2, v0, v1

    sput-object v0, Lfreemarker/core/r2;->break:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/d0;)V
    .locals 1

    const-string v0, "Expecting numerical value here"

    .line 1
    invoke-direct {p0, p1, v0}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/d0;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/b1;
        }
    .end annotation

    .line 4
    sget-object v4, Lfreemarker/core/r2;->break:[Ljava/lang/Class;

    const-string v3, "number"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/d0;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;Lfreemarker/core/d0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/b1;
        }
    .end annotation

    .line 5
    sget-object v4, Lfreemarker/core/r2;->break:[Ljava/lang/Class;

    const-string v3, "number"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;Lfreemarker/core/d0;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;[Ljava/lang/String;Lfreemarker/core/d0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/b1;
        }
    .end annotation

    .line 6
    sget-object v4, Lfreemarker/core/r2;->break:[Ljava/lang/Class;

    const-string v3, "number"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lfreemarker/core/d0;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/z4;Lfreemarker/core/d0;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2, p1}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/d0;Lfreemarker/core/z4;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/core/d0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p1}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/d0;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/template/TemplateModel;[Ljava/lang/String;Lfreemarker/core/d0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/b1;
        }
    .end annotation

    .line 7
    sget-object v4, Lfreemarker/core/r2;->break:[Ljava/lang/Class;

    const-string v3, "number"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/r4;-><init>(Ljava/lang/String;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lfreemarker/core/d0;)V

    return-void
.end method

.method public static newMalformedNumberException(Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/core/d0;)Lfreemarker/core/r2;
    .locals 5

    .line 1
    new-instance v0, Lfreemarker/core/r2;

    new-instance v1, Lfreemarker/core/z4;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Can\'t convert this string to number: "

    aput-object v4, v2, v3

    new-instance v3, Landroid/support/v4/fl2;

    invoke-direct {v3, p1}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-object v3, v2, p1

    invoke-direct {v1, v2}, Lfreemarker/core/z4;-><init>([Ljava/lang/Object;)V

    .line 2
    invoke-virtual {v1, p0}, Lfreemarker/core/z4;->if(Lfreemarker/core/h0;)Lfreemarker/core/z4;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lfreemarker/core/r2;-><init>(Lfreemarker/core/z4;Lfreemarker/core/d0;)V

    return-object v0
.end method
