.class public interface abstract Lfreemarker/template/TemplateDateModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModel;


# static fields
.field public static final DATE:I = 0x2

.field public static final DATETIME:I = 0x3

.field public static final TIME:I = 0x1

.field public static final TYPE_NAMES:Ljava/util/List;

.field public static final UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "UNKNOWN"

    const-string v1, "TIME"

    const-string v2, "DATE"

    const-string v3, "DATETIME"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lfreemarker/template/TemplateDateModel;->TYPE_NAMES:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract getAsDate()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation
.end method

.method public abstract getDateType()I
.end method
