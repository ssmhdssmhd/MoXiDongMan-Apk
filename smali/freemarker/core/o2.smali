.class public Lfreemarker/core/o2;
.super Lfreemarker/core/r4;
.source "SourceFile"


# static fields
.field private static final break:[Ljava/lang/Class;

.field private static final catch:[Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lfreemarker/template/TemplateMethodModel;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sput-object v2, Lfreemarker/core/o2;->break:[Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v0, v2, v3

    .line 2
    const-class v0, Lfreemarker/core/x1;

    aput-object v0, v2, v1

    sput-object v2, Lfreemarker/core/o2;->catch:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/d0;)V
    .locals 1

    const-string v0, "Expecting method value here"

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/b1;
        }
    .end annotation

    .line 4
    sget-object v4, Lfreemarker/core/o2;->break:[Ljava/lang/Class;

    const-string v3, "method"

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
    sget-object v4, Lfreemarker/core/o2;->break:[Ljava/lang/Class;

    const-string v3, "method"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;Lfreemarker/core/d0;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;ZZ[Ljava/lang/String;Lfreemarker/core/d0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/b1;
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    if-eqz p3, :cond_0

    const-string v2, " or function"

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    const-string v1, " or lambda expression"

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p3, :cond_2

    sget-object p3, Lfreemarker/core/o2;->catch:[Ljava/lang/Class;

    goto :goto_1

    :cond_2
    sget-object p3, Lfreemarker/core/o2;->break:[Ljava/lang/Class;

    :goto_1
    move-object v6, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lfreemarker/core/d0;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;[Ljava/lang/String;Lfreemarker/core/d0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/b1;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 6
    invoke-direct/range {v0 .. v6}, Lfreemarker/core/o2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;ZZ[Ljava/lang/String;Lfreemarker/core/d0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/core/d0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p1}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/d0;Ljava/lang/String;)V

    return-void
.end method
