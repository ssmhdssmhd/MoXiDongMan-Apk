.class public Lfreemarker/template/while;
.super Lfreemarker/template/final;
.source "SourceFile"


# instance fields
.field private do:Ljava/lang/String;

.field private if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/template/final;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/template/while;->if:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lfreemarker/template/while;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public do(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/template/while;->if:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lfreemarker/template/while;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Landroid/support/v4/k52;

    const-string v1, "missing resource"

    invoke-direct {v0, v1, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
