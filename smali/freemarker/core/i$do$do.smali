.class Lfreemarker/core/i$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateSequenceModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/i$do;->if()Lfreemarker/template/TemplateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/regex/Matcher;

.field public final synthetic if:Lfreemarker/core/i$do;


# direct methods
.method public constructor <init>(Lfreemarker/core/i$do;Ljava/util/regex/Matcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/i$do$do;->if:Lfreemarker/core/i$do;

    iput-object p2, p0, Lfreemarker/core/i$do$do;->do:Ljava/util/regex/Matcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Landroid/support/v4/ez1;

    iget-object v1, p0, Lfreemarker/core/i$do$do;->do:Ljava/util/regex/Matcher;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Landroid/support/v4/vl2;

    const-string v1, "Failed to read regular expression match group"

    invoke-direct {v0, p1, v1}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/i$do$do;->do:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Landroid/support/v4/vl2;

    const-string v2, "Failed to get regular expression match group count"

    invoke-direct {v1, v0, v2}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v1
.end method
