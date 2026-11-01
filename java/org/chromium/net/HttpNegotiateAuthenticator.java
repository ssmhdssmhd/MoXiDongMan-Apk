package org.chromium.net;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.support.v4.lo0;
import android.support.v4.qk0;
import android.support.v4.rv0;
import android.support.v4.w21;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import org.chromium.base.ApplicationStatus;
import org.chromium.base.Ctry;
import org.chromium.base.ThreadUtils;
import org.chromium.base.annotations.CalledByNative;

@lo0("net::android")
/* loaded from: classes3.dex */
public class HttpNegotiateAuthenticator {

    /* renamed from: for, reason: not valid java name */
    private static final String f33311for = "net_auth";

    /* renamed from: new, reason: not valid java name */
    public static final /* synthetic */ boolean f33312new = false;

    /* renamed from: do, reason: not valid java name */
    private Bundle f33313do;

    /* renamed from: if, reason: not valid java name */
    private final String f33314if;

    public interface Natives {
        void setResult(long j, HttpNegotiateAuthenticator httpNegotiateAuthenticator, int i, String str);
    }

    @VisibleForTesting
    /* renamed from: org.chromium.net.HttpNegotiateAuthenticator$do, reason: invalid class name */
    public class Cdo implements AccountManagerCallback<Account[]> {

        /* renamed from: do, reason: not valid java name */
        private final Cfor f33315do;

        public Cdo(Cfor cfor) {
            this.f33315do = cfor;
        }

        @Override // android.accounts.AccountManagerCallback
        public void run(AccountManagerFuture<Account[]> accountManagerFuture) throws OperationCanceledException, IOException, AuthenticatorException {
            try {
                Account[] result = accountManagerFuture.getResult();
                if (result.length == 0) {
                    rv0.m7150const(HttpNegotiateAuthenticator.f33311for, "ERR_MISSING_AUTH_CREDENTIALS: No account provided for the kerberos authentication. Please verify the configuration policies and that the CONTACTS runtime permission is granted. ", new Object[0]);
                    Cthis.m37719if().setResult(this.f33315do.f33317do, HttpNegotiateAuthenticator.this, w21.y3, null);
                    return;
                }
                if (result.length > 1) {
                    rv0.m7150const(HttpNegotiateAuthenticator.f33311for, "ERR_MISSING_AUTH_CREDENTIALS: Found %d accounts eligible for the kerberos authentication. Please fix the configuration by providing a single account.", Integer.valueOf(result.length));
                    Cthis.m37719if().setResult(this.f33315do.f33317do, HttpNegotiateAuthenticator.this, w21.y3, null);
                } else if (HttpNegotiateAuthenticator.this.m37306if(Ctry.m37273case(), "android.permission.USE_CREDENTIALS", true)) {
                    rv0.m7156if(HttpNegotiateAuthenticator.f33311for, "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: USE_CREDENTIALS permission not granted. Aborting authentication.", new Object[0]);
                    Cthis.m37719if().setResult(this.f33315do.f33317do, HttpNegotiateAuthenticator.this, w21.A3, null);
                } else {
                    Cfor cfor = this.f33315do;
                    Account account = result[0];
                    cfor.f33321try = account;
                    cfor.f33319if.getAuthToken(account, cfor.f33320new, cfor.f33318for, true, (AccountManagerCallback<Bundle>) HttpNegotiateAuthenticator.this.new Cif(cfor), new Handler(ThreadUtils.m36931case()));
                }
            } catch (AuthenticatorException | OperationCanceledException | IOException e) {
                rv0.m7150const(HttpNegotiateAuthenticator.f33311for, "ERR_UNEXPECTED: Error while attempting to retrieve accounts.", e);
                Cthis.m37719if().setResult(this.f33315do.f33317do, HttpNegotiateAuthenticator.this, -9, null);
            }
        }
    }

    /* renamed from: org.chromium.net.HttpNegotiateAuthenticator$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        public long f33317do;

        /* renamed from: for, reason: not valid java name */
        public Bundle f33318for;

        /* renamed from: if, reason: not valid java name */
        public AccountManager f33319if;

        /* renamed from: new, reason: not valid java name */
        public String f33320new;

        /* renamed from: try, reason: not valid java name */
        public Account f33321try;
    }

    @VisibleForTesting
    /* renamed from: org.chromium.net.HttpNegotiateAuthenticator$if, reason: invalid class name */
    public class Cif implements AccountManagerCallback<Bundle> {

        /* renamed from: do, reason: not valid java name */
        private final Cfor f33322do;

        /* renamed from: org.chromium.net.HttpNegotiateAuthenticator$if$do, reason: invalid class name */
        public class Cdo extends BroadcastReceiver {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Context f33324do;

            public Cdo(Context context) {
                this.f33324do = context;
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                this.f33324do.unregisterReceiver(this);
                AccountManager accountManager = Cif.this.f33322do.f33319if;
                Account account = Cif.this.f33322do.f33321try;
                String str = Cif.this.f33322do.f33320new;
                Bundle bundle = Cif.this.f33322do.f33318for;
                Cif cif = Cif.this;
                accountManager.getAuthToken(account, str, bundle, true, (AccountManagerCallback<Bundle>) HttpNegotiateAuthenticator.this.new Cif(cif.f33322do), (Handler) null);
            }
        }

        public Cif(Cfor cfor) {
            this.f33322do = cfor;
        }

        @Override // android.accounts.AccountManagerCallback
        public void run(AccountManagerFuture<Bundle> accountManagerFuture) throws OperationCanceledException, IOException, AuthenticatorException {
            try {
                Bundle result = accountManagerFuture.getResult();
                if (!result.containsKey("intent")) {
                    HttpNegotiateAuthenticator.this.m37303for(result, this.f33322do);
                } else {
                    Context contextM37273case = Ctry.m37273case();
                    contextM37273case.registerReceiver(new Cdo(contextM37273case), new IntentFilter("android.accounts.LOGIN_ACCOUNTS_CHANGED"));
                }
            } catch (AuthenticatorException | OperationCanceledException | IOException e) {
                rv0.m7150const(HttpNegotiateAuthenticator.f33311for, "ERR_UNEXPECTED: Error while attempting to obtain a token.", e);
                Cthis.m37719if().setResult(this.f33322do.f33317do, HttpNegotiateAuthenticator.this, -9, null);
            }
        }
    }

    public HttpNegotiateAuthenticator(String str) {
        this.f33314if = str;
    }

    @VisibleForTesting
    @CalledByNative
    public static HttpNegotiateAuthenticator create(String str) {
        return new HttpNegotiateAuthenticator(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public void m37303for(Bundle bundle, Cfor cfor) {
        int i;
        this.f33313do = bundle.getBundle(qk0.f5456if);
        switch (bundle.getInt(qk0.f5457new, 1)) {
            case 0:
                i = 0;
                break;
            case 1:
            default:
                i = -9;
                break;
            case 2:
                i = -3;
                break;
            case 3:
                i = w21.z3;
                break;
            case 4:
                i = w21.f3;
                break;
            case 5:
                i = w21.v3;
                break;
            case 6:
                i = w21.w3;
                break;
            case 7:
                i = w21.y3;
                break;
            case 8:
                i = w21.B3;
                break;
            case 9:
                i = w21.n3;
                break;
        }
        Cthis.m37719if().setResult(cfor.f33317do, this, i, bundle.getString("authtoken"));
    }

    /* renamed from: new, reason: not valid java name */
    private void m37304new(Context context, Activity activity, Cfor cfor, String[] strArr) {
        boolean z = Build.VERSION.SDK_INT < 23;
        String str = z ? "android.permission.MANAGE_ACCOUNTS" : "android.permission.GET_ACCOUNTS";
        if (!m37306if(context, str, z)) {
            cfor.f33319if.getAuthTokenByFeatures(this.f33314if, cfor.f33320new, strArr, activity, null, cfor.f33318for, new Cif(cfor), new Handler(ThreadUtils.m36931case()));
        } else {
            rv0.m7156if(f33311for, "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: %s permission not granted. Aborting authentication", str);
            Cthis.m37719if().setResult(cfor.f33317do, this, w21.A3, null);
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m37305try(Context context, Cfor cfor, String[] strArr) {
        if (!m37306if(context, "android.permission.GET_ACCOUNTS", true)) {
            cfor.f33319if.getAccountsByTypeAndFeatures(this.f33314if, strArr, new Cdo(cfor), new Handler(ThreadUtils.m36931case()));
        } else {
            rv0.m7156if(f33311for, "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: GET_ACCOUNTS permission not granted. Aborting authentication.", new Object[0]);
            Cthis.m37719if().setResult(cfor.f33317do, this, w21.A3, null);
        }
    }

    @VisibleForTesting
    @CalledByNative
    public void getNextAuthToken(long j, String str, String str2, boolean z) {
        Context contextM37273case = Ctry.m37273case();
        Cfor cfor = new Cfor();
        cfor.f33320new = qk0.f5447case + str;
        cfor.f33319if = AccountManager.get(contextM37273case);
        cfor.f33317do = j;
        String[] strArr = {qk0.f5461try};
        Bundle bundle = new Bundle();
        cfor.f33318for = bundle;
        if (str2 != null) {
            bundle.putString(qk0.f5451do, str2);
        }
        Bundle bundle2 = this.f33313do;
        if (bundle2 != null) {
            cfor.f33318for.putBundle(qk0.f5456if, bundle2);
        }
        cfor.f33318for.putBoolean(qk0.f5454for, z);
        Activity activityM36699break = ApplicationStatus.m36699break();
        if (activityM36699break == null) {
            m37305try(contextM37273case, cfor, strArr);
        } else {
            m37304new(contextM37273case, activityM36699break, cfor, strArr);
        }
    }

    @VisibleForTesting
    /* renamed from: if, reason: not valid java name */
    public boolean m37306if(Context context, String str, boolean z) {
        return (!z || Build.VERSION.SDK_INT < 23) && context.checkPermission(str, Process.myPid(), Process.myUid()) != 0;
    }
}
