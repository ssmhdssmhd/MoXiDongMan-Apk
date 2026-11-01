.class public Landroid/support/v4/nv0;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private cause:Ljava/lang/Throwable;

.field public message:Landroid/support/v4/g80;


# direct methods
.method public constructor <init>(Landroid/support/v4/g80;)V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/d62;->final(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/support/v4/nv0;->message:Landroid/support/v4/g80;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/g80;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/d62;->final(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/support/v4/nv0;->message:Landroid/support/v4/g80;

    iput-object p2, p0, Landroid/support/v4/nv0;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/nv0;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getErrorMessage()Landroid/support/v4/g80;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/nv0;->message:Landroid/support/v4/g80;

    return-object v0
.end method
